///
//  Generated code. Do not modify.
//  source: list_database_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listDatabasesRequestDescriptor instead')
const ListDatabasesRequest$json = const {
  '1': 'ListDatabasesRequest',
  '2': const [
    const {
      '1': 'connectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'connectionOid'
    },
    const {
      '1': 'request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.ListDatabasesRequest.Request',
      '10': 'request'
    },
  ],
  '3': const [ListDatabasesRequest_Request$json],
};

@$core.Deprecated('Use listDatabasesRequestDescriptor instead')
const ListDatabasesRequest_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 12, '10': 'filter'},
    const {
      '1': 'nameOnly',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'nameOnly'
    },
    const {
      '1': 'authorizedDatabases',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'authorizedDatabases'
    },
  ],
};

/// Descriptor for `ListDatabasesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDatabasesRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0RGF0YWJhc2VzUmVxdWVzdBIkCg1jb25uZWN0aW9uT2lkGAEgASgMUg1jb25uZWN0aW9uT2lkEjcKB3JlcXVlc3QYAiABKAsyHS5MaXN0RGF0YWJhc2VzUmVxdWVzdC5SZXF1ZXN0UgdyZXF1ZXN0GqcBCgdSZXF1ZXN0EhYKBmZpbHRlchgBIAEoDFIGZmlsdGVyEjYKCG5hbWVPbmx5GAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVIIbmFtZU9ubHkSTAoTYXV0aG9yaXplZERhdGFiYXNlcxgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSE2F1dGhvcml6ZWREYXRhYmFzZXM=');
