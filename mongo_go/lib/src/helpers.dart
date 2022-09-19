import 'dart:ffi' as ffi; // For FFI
import 'dart:io';
import 'package:mongo_go/gen/google/protobuf/wrappers.pb.dart';
import 'package:path/path.dart';

import 'lib_mongo_proxy.dart';

LibMongoProxy getNativeLibrary() {
  final dylib =
      ffi.DynamicLibrary.open(join(Directory.current.path, 'mongo_proxy.so'));
  final nl = LibMongoProxy(dylib);
  return nl;
}

StringValue? getStringValue(String? value) =>
    value == null ? null : StringValue(value: value);

BoolValue? getBoolValue(bool? value) =>
    value == null ? null : BoolValue(value: value);
