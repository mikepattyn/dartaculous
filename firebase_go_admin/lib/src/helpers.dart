import 'package:firebase_go_admin/gen/google/protobuf/wrappers.pb.dart';
import 'package:go_bridge/helpers.dart' as bridge;

import 'lib_firebase_admin.dart';

LibFirebaseAdmin getNativeLibrary() {
  final dylib = bridge.getDynamicLibrary('firebase_go_admin.so');
  final nl = LibFirebaseAdmin(dylib);
  return nl;
}

StringValue? getStringValue(String? value) =>
    value == null ? null : StringValue(value: value);

BoolValue? getBoolValue(bool? value) =>
    value == null ? null : BoolValue(value: value);
