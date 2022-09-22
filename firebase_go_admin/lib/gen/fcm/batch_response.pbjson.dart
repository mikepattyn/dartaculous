///
//  Generated code. Do not modify.
//  source: fcm/batch_response.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use batchResponseDescriptor instead')
const BatchResponse$json = const {
  '1': 'BatchResponse',
  '2': const [
    const {'1': 'failure_count', '3': 1, '4': 1, '5': 5, '10': 'failureCount'},
    const {'1': 'success_count', '3': 2, '4': 1, '5': 5, '10': 'successCount'},
    const {
      '1': 'responses',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.SendResponse',
      '10': 'responses'
    },
  ],
};

/// Descriptor for `BatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchResponseDescriptor = $convert.base64Decode(
    'Cg1CYXRjaFJlc3BvbnNlEiMKDWZhaWx1cmVfY291bnQYASABKAVSDGZhaWx1cmVDb3VudBIjCg1zdWNjZXNzX2NvdW50GAIgASgFUgxzdWNjZXNzQ291bnQSKwoJcmVzcG9uc2VzGAMgAygLMg0uU2VuZFJlc3BvbnNlUglyZXNwb25zZXM=');
@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = const {
  '1': 'SendResponse',
  '2': const [
    const {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    const {
      '1': 'message_id_has_value',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'messageIdHasValue'
    },
    const {'1': 'is_success', '3': 3, '4': 1, '5': 8, '10': 'isSuccess'},
    const {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor = $convert.base64Decode(
    'CgxTZW5kUmVzcG9uc2USHQoKbWVzc2FnZV9pZBgBIAEoCVIJbWVzc2FnZUlkEi8KFG1lc3NhZ2VfaWRfaGFzX3ZhbHVlGAIgASgIUhFtZXNzYWdlSWRIYXNWYWx1ZRIdCgppc19zdWNjZXNzGAMgASgIUglpc1N1Y2Nlc3MSFAoFZXJyb3IYBCABKAlSBWVycm9y');
