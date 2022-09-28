import 'dart:ffi' as ffi; // For FFI
import 'dart:io';
import 'package:mongo_go/gen/google/protobuf/wrappers.pb.dart';
import 'package:path/path.dart';

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
