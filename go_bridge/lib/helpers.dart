import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:go_bridge/gen/common/basic_error_message.pb.dart';
import 'package:go_bridge/gen/common/response.pb.dart';
import 'package:go_bridge/gen/google/protobuf/any.pb.dart';
import 'dart:ffi' as ffi; // For FFI
import 'package:protobuf/protobuf.dart';
import 'package:tuple/tuple.dart';

import 'gen/google/protobuf/empty.pb.dart';

ReceivePort createReceivePort(Completer<Uint8List> c) {
  final receivePort = ReceivePort()
    ..listen((data) {
      c.complete(data);
    });
  return receivePort;
}

Tuple2<Pointer<UnsignedChar>, int> serializeToPointedBytes(
  GeneratedMessage message,
) {
  final bytes = message.writeToBuffer();
  final ptr = malloc.allocate<UnsignedChar>(bytes.lengthInBytes);
  try {
    bytes.asMap().forEach((index, utf) {
      ptr[index] = bytes[index];
    });
  } catch (_) {
    malloc.free(ptr);
    rethrow;
  }

  return Tuple2<Pointer<UnsignedChar>, int>(ptr, bytes.length);
}

Future<TResponse> callGoFunc<TResponse extends GeneratedMessage>({
  required GeneratedMessage request,
  required void Function(int port, Pointer<UnsignedChar> buffer, int size)
      goFunc,
  required TResponse responseToFill,
  List<GeneratedMessage>? errorsToThrow,
}) async {
  final c = Completer<Uint8List>();
  final receivePort = createReceivePort(c);

  try {
    _doCall(request, goFunc, receivePort);
    final receivedBytes = await c.future;

    final msg = _getResponseMessage(receivedBytes);

    _throwOnError(errorsToThrow, msg);

    if (msg.canUnpackInto(responseToFill)) {
      msg.unpackInto(responseToFill);
      return responseToFill;
    }
    throw UnsupportedError('Type of response content not supported');
  } finally {
    receivePort.close();
  }
}

Stream<TResponse> getGoStream<TResponse extends GeneratedMessage>({
  required GeneratedMessage request,
  required void Function(int port, Pointer<UnsignedChar> buffer, int size)
      goFunc,
  required TResponse responseToFill,
  List<GeneratedMessage>? errorsToThrow,
}) {
  final sc = StreamController<TResponse>();
  final sink = sc.sink;
  final receivePort = ReceivePort();
  sc.sink.done.then(
    (value) {
      receivePort.close();
    },
  );

  receivePort.listen((data) {
    if (sc.isClosed) {
      receivePort.close();
      return;
    }
    final msg = _getResponseMessage(data);
    final error = _getError(errorsToThrow, msg);
    if (error != null) {
      sink.addError(error);
      return;
    }
    if (_isEmpty(msg)) {
      sink.close();
      return;
    }

    if (msg.canUnpackInto(responseToFill)) {
      msg.unpackInto(responseToFill);
      sink.add(responseToFill);
      return;
    }
    sink.addError('unsupported type of message');
  });

  _doCall(request, goFunc, receivePort);

  return sc.stream;
}

Any _getResponseMessage(receivedBytes) {
  final response = Response();
  response.mergeFromBuffer(receivedBytes);
  final msg = response.msg;
  return msg;
}

void _doCall(
    GeneratedMessage request,
    void Function(int, Pointer<UnsignedChar>, int) goFunc,
    ReceivePort receivePort) {
  final tuple = serializeToPointedBytes(request);
  final ptr = tuple.item1;

  try {
    final length = tuple.item2;
    goFunc(receivePort.sendPort.nativePort, ptr, length);
  } finally {
    malloc.free(ptr);
  }
}

GeneratedMessage? _getError(
  List<GeneratedMessage>? errorsToThrow,
  Any msg,
) {
  errorsToThrow ??= [BasicErrorMessage()];
  for (final errorToThrow in errorsToThrow) {
    if (msg.canUnpackInto(errorToThrow)) {
      msg.unpackInto(errorToThrow);
      return errorToThrow;
    }
  }
  return null;
}

final _emptyTemplate = Empty();
bool _isEmpty(
  Any msg,
) {
  final isEmpty = msg.canUnpackInto(_emptyTemplate);
  return isEmpty;
}

void _throwOnError(
  List<GeneratedMessage>? errorsToThrow,
  Any msg,
) {
  final error = _getError(errorsToThrow, msg);
  if (error != null) throw error;
}
