///
//  Generated code. Do not modify.
//  source: transaction_identifier.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use transactionIdentifierDescriptor instead')
const TransactionIdentifier$json = const {
  '1': 'TransactionIdentifier',
  '2': const [
    const {'1': 'sessionOid', '3': 2, '4': 1, '5': 12, '10': 'sessionOid'},
    const {
      '1': 'transactionId',
      '3': 3,
      '4': 1,
      '5': 12,
      '10': 'transactionId'
    },
  ],
};

/// Descriptor for `TransactionIdentifier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionIdentifierDescriptor = $convert.base64Decode(
    'ChVUcmFuc2FjdGlvbklkZW50aWZpZXISHgoKc2Vzc2lvbk9pZBgCIAEoDFIKc2Vzc2lvbk9pZBIkCg10cmFuc2FjdGlvbklkGAMgASgMUg10cmFuc2FjdGlvbklk');
