///
//  Generated code. Do not modify.
//  source: countDocuments.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use countDocumentsRequestDescriptor instead')
const CountDocumentsRequest$json = const {
  '1': 'CountDocumentsRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
    const {
      '1': 'context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.RequestContext',
      '10': 'context'
    },
    const {'1': 'filter', '3': 3, '4': 1, '5': 12, '10': 'filter'},
  ],
};

/// Descriptor for `CountDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countDocumentsRequestDescriptor = $convert.base64Decode(
    'ChVDb3VudERvY3VtZW50c1JlcXVlc3QSJAoNY29sbGVjdGlvbk9pZBgBIAEoDFINY29sbGVjdGlvbk9pZBIpCgdjb250ZXh0GAIgASgLMg8uUmVxdWVzdENvbnRleHRSB2NvbnRleHQSFgoGZmlsdGVyGAMgASgMUgZmaWx0ZXI=');
@$core.Deprecated('Use countDocumentsResultDescriptor instead')
const CountDocumentsResult$json = const {
  '1': 'CountDocumentsResult',
  '2': const [
    const {'1': 'cnt', '3': 1, '4': 1, '5': 3, '10': 'cnt'},
  ],
};

/// Descriptor for `CountDocumentsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countDocumentsResultDescriptor = $convert
    .base64Decode('ChRDb3VudERvY3VtZW50c1Jlc3VsdBIQCgNjbnQYASABKANSA2NudA==');
