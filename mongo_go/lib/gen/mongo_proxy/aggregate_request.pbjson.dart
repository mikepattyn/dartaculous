///
//  Generated code. Do not modify.
//  source: mongo_proxy/aggregate_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use aggregateRequestDescriptor instead')
const AggregateRequest$json = const {
  '1': 'AggregateRequest',
  '2': const [
    const {'1': 'collectionOid', '3': 1, '4': 1, '5': 12, '10': 'collectionOid'},
    const {'1': 'context', '3': 2, '4': 1, '5': 11, '6': '.RequestContext', '10': 'context'},
    const {'1': 'pipeline', '3': 3, '4': 3, '5': 12, '10': 'pipeline'},
  ],
};

/// Descriptor for `AggregateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aggregateRequestDescriptor = $convert.base64Decode('ChBBZ2dyZWdhdGVSZXF1ZXN0EiQKDWNvbGxlY3Rpb25PaWQYASABKAxSDWNvbGxlY3Rpb25PaWQSKQoHY29udGV4dBgCIAEoCzIPLlJlcXVlc3RDb250ZXh0Ugdjb250ZXh0EhoKCHBpcGVsaW5lGAMgAygMUghwaXBlbGluZQ==');