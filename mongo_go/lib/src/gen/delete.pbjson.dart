///
//  Generated code. Do not modify.
//  source: delete.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = const {
  '1': 'DeleteRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
    const {'1': 'sessionOid', '3': 2, '4': 1, '5': 12, '10': 'sessionOid'},
    const {'1': 'filter', '3': 3, '4': 1, '5': 12, '10': 'filter'},
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVSZXF1ZXN0EiQKDWNvbGxlY3Rpb25PaWQYASABKAxSDWNvbGxlY3Rpb25PaWQSHgoKc2Vzc2lvbk9pZBgCIAEoDFIKc2Vzc2lvbk9pZBIWCgZmaWx0ZXIYAyABKAxSBmZpbHRlcg==');
@$core.Deprecated('Use deleteResultDescriptor instead')
const DeleteResult$json = const {
  '1': 'DeleteResult',
  '2': const [
    const {'1': 'deletedCount', '3': 1, '4': 1, '5': 3, '10': 'deletedCount'},
  ],
};

/// Descriptor for `DeleteResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResultDescriptor = $convert.base64Decode(
    'CgxEZWxldGVSZXN1bHQSIgoMZGVsZXRlZENvdW50GAEgASgDUgxkZWxldGVkQ291bnQ=');
