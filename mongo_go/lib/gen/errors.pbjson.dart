///
//  Generated code. Do not modify.
//  source: errors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use errorTypeDescriptor instead')
const ErrorType$json = const {
  '1': 'ErrorType',
  '2': const [
    const {'1': 'unspecified', '2': 0},
    const {'1': 'duplicate_key', '2': 1},
    const {'1': 'network', '2': 2},
    const {'1': 'timeout', '2': 3},
    const {'1': 'no_documents', '2': 4},
  ],
};

/// Descriptor for `ErrorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List errorTypeDescriptor = $convert.base64Decode('CglFcnJvclR5cGUSDwoLdW5zcGVjaWZpZWQQABIRCg1kdXBsaWNhdGVfa2V5EAESCwoHbmV0d29yaxACEgsKB3RpbWVvdXQQAxIQCgxub19kb2N1bWVudHMQBA==');
@$core.Deprecated('Use mongoErrorDescriptor instead')
const MongoError$json = const {
  '1': 'MongoError',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'errorType', '3': 2, '4': 1, '5': 14, '6': '.ErrorType', '10': 'errorType'},
  ],
};

/// Descriptor for `MongoError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mongoErrorDescriptor = $convert.base64Decode('CgpNb25nb0Vycm9yEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USKAoJZXJyb3JUeXBlGAIgASgOMgouRXJyb3JUeXBlUgllcnJvclR5cGU=');
