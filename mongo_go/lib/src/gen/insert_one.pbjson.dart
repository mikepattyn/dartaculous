///
//  Generated code. Do not modify.
//  source: insert_one.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use insertOneRequestDescriptor instead')
const InsertOneRequest$json = const {
  '1': 'InsertOneRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
    const {'1': 'sessionOid', '3': 2, '4': 1, '5': 12, '10': 'sessionOid'},
    const {'1': 'document', '3': 3, '4': 1, '5': 12, '10': 'document'},
  ],
};

/// Descriptor for `InsertOneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertOneRequestDescriptor = $convert.base64Decode(
    'ChBJbnNlcnRPbmVSZXF1ZXN0EiQKDWNvbGxlY3Rpb25PaWQYASABKAxSDWNvbGxlY3Rpb25PaWQSHgoKc2Vzc2lvbk9pZBgCIAEoDFIKc2Vzc2lvbk9pZBIaCghkb2N1bWVudBgDIAEoDFIIZG9jdW1lbnQ=');
@$core.Deprecated('Use insertOneResultDescriptor instead')
const InsertOneResult$json = const {
  '1': 'InsertOneResult',
  '2': const [
    const {'1': 'insertedId', '3': 1, '4': 1, '5': 12, '10': 'insertedId'},
  ],
};

/// Descriptor for `InsertOneResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertOneResultDescriptor = $convert.base64Decode(
    'Cg9JbnNlcnRPbmVSZXN1bHQSHgoKaW5zZXJ0ZWRJZBgBIAEoDFIKaW5zZXJ0ZWRJZA==');
