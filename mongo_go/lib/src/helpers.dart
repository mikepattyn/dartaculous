import 'dart:ffi' as ffi; // For FFI
import 'dart:ffi';
import 'dart:io';
import 'package:mongo_go/gen/google/protobuf/wrappers.pb.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/proto.dart' as p;
import 'package:path/path.dart';
import 'package:protobuf/protobuf.dart';
import 'package:go_bridge/helpers.dart' as bridge;

import 'lib_mongo_go.dart';

LibMongoProxy getNativeLibrary() {
  final path = _getLibPath();
  final dylib = ffi.DynamicLibrary.open(path);
  final nl = LibMongoProxy(dylib);
  return nl;
}

String _getLibPath() {
  {
    final path = join(Directory.current.path, 'mongo_go.so');
    if (File(path).existsSync()) {
      return path;
    }
  }
  final path = join(Directory.current.path, 'lib/mongo_go.so');
  if (File(path).existsSync()) {
    return path;
  }

  throw 'Could not find mongo_go.so';
}

StringValue? getStringValue(String? value) =>
    value == null ? null : StringValue(value: value);

BoolValue? getBoolValue(bool? value) =>
    value == null ? null : BoolValue(value: value);

Future<TResponse> callGoFunc<TResponse extends GeneratedMessage>({
  required GeneratedMessage request,
  required void Function(int port, Pointer<UnsignedChar> buffer, int size)
      goFunc,
  required TResponse responseToFill,
}) async {
  try {
    return await bridge.callGoFunc(
        request: request,
        goFunc: goFunc,
        responseToFill: responseToFill,
        errorsToThrow: [
          p.MongoError(),
        ]);
  } on p.MongoError catch (err) {
    throw MongoError.fromProto(err);
  }
}

Stream<TResponse> getGoStream<TResponse extends GeneratedMessage>({
  required GeneratedMessage request,
  required void Function(int port, Pointer<UnsignedChar> buffer, int size)
      goFunc,
  required TResponse responseToFill,
  List<GeneratedMessage>? errorsToThrow,
}) {
  try {
    return bridge.getGoStream(
        request: request,
        goFunc: goFunc,
        responseToFill: responseToFill,
        errorsToThrow: [
          p.MongoError(),
        ]);
  } on p.MongoError catch (err) {
    throw MongoError.fromProto(err);
  }
}
