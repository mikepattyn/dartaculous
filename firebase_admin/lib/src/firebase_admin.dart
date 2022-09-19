import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'helpers.dart';

final nl = getNativeLibrary();

void initialize(String serviceFilePath) {
  final serviceAccount =
      serviceFilePath.toNativeUtf8(allocator: malloc).cast<Char>();
  try {
    nl.initialize(NativeApi.initializeApiDLData, serviceAccount);
  } finally {
    malloc.free(serviceAccount);
  }
}

void initializeWithJson(String serviceAccountJson) {
  final serviceAccount =
      serviceAccountJson.toNativeUtf8(allocator: malloc).cast<Char>();
  try {
    nl.initializeWithJson(NativeApi.initializeApiDLData, serviceAccount);
  } finally {
    malloc.free(serviceAccount);
  }
}
