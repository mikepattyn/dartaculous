import 'dart:io';

import 'package:firebase_admin/gen/google/protobuf/wrappers.pb.dart';
import 'package:path/path.dart';
import 'dart:ffi' as ffi; // For FFI

import 'lib_firebase_admin.dart';

LibFirebaseAdmin getNativeLibrary() {
  final dylib = ffi.DynamicLibrary.open(
      join(Directory.current.path, 'firebase_admin.so'));
  final nl = LibFirebaseAdmin(dylib);
  return nl;
}

StringValue? getStringValue(String? value) =>
    value == null ? null : StringValue(value: value);

BoolValue? getBoolValue(bool? value) =>
    value == null ? null : BoolValue(value: value);
