///
//  Generated code. Do not modify.
//  source: polymorphism/balloon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gBalloonDescriptor instead')
const GBalloon$json = {
  '1': 'GBalloon',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'service_ceiling', '3': 2, '4': 1, '5': 5, '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBalloonDescriptor = $convert.base64Decode(
    'CghHQmFsbG9vbhIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBInCg9zZXJ2aWNlX2NlaWxpbmcYAiABKAVSDnNlcnZpY2VDZWlsaW5n');
@$core.Deprecated('Use gListOfBalloonDescriptor instead')
const GListOfBalloon$json = {
  '1': 'GListOfBalloon',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GBalloon', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBalloonDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mQmFsbG9vbhIfCgVpdGVtcxgBIAMoCzIJLkdCYWxsb29uUgVpdGVtcw==');
