import 'dart:ffi';
import 'gen/google/protobuf/wrappers.pb.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/proto.dart' as p;
import 'package:protobuf/protobuf.dart';
import 'package:go_bridge/helpers.dart' as bridge;

import 'lib_mongo_go.dart';

LibMongoProxy getNativeLibrary() {
  final dylib = bridge.getDynamicLibrary('mongo_go.so');
  final nl = LibMongoProxy(dylib);
  return nl;
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
