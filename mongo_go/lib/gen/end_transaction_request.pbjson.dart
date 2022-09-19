///
//  Generated code. Do not modify.
//  source: end_transaction_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use endTransactionRequestDescriptor instead')
const EndTransactionRequest$json = const {
  '1': 'EndTransactionRequest',
  '2': const [
    const {'1': 'connectionOid', '3': 1, '4': 1, '5': 12, '10': 'connectionOid'},
    const {'1': 'sessionOid', '3': 2, '4': 1, '5': 12, '10': 'sessionOid'},
    const {'1': 'transactionOid', '3': 3, '4': 1, '5': 12, '10': 'transactionOid'},
    const {'1': 'errorMessage', '3': 4, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `EndTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endTransactionRequestDescriptor = $convert.base64Decode('ChVFbmRUcmFuc2FjdGlvblJlcXVlc3QSJAoNY29ubmVjdGlvbk9pZBgBIAEoDFINY29ubmVjdGlvbk9pZBIeCgpzZXNzaW9uT2lkGAIgASgMUgpzZXNzaW9uT2lkEiYKDnRyYW5zYWN0aW9uT2lkGAMgASgMUg50cmFuc2FjdGlvbk9pZBIiCgxlcnJvck1lc3NhZ2UYBCABKAlSDGVycm9yTWVzc2FnZQ==');
