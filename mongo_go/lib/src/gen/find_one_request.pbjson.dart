///
//  Generated code. Do not modify.
//  source: find_one_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use findOneRequestDescriptor instead')
const FindOneRequest$json = const {
  '1': 'FindOneRequest',
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

/// Descriptor for `FindOneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findOneRequestDescriptor = $convert.base64Decode(
    'Cg5GaW5kT25lUmVxdWVzdBIkCg1jb2xsZWN0aW9uT2lkGAEgASgMUg1jb2xsZWN0aW9uT2lkEh4KCnNlc3Npb25PaWQYAiABKAxSCnNlc3Npb25PaWQSFgoGZmlsdGVyGAMgASgMUgZmaWx0ZXI=');
