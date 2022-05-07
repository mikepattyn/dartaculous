///
//  Generated code. Do not modify.
//  source: polymorphism/gyrocopter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gGyrocopterDescriptor instead')
const GGyrocopter$json = {
  '1': 'GGyrocopter',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'service_ceiling', '3': 2, '4': 1, '5': 5, '10': 'serviceCeiling'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GGyrocopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGyrocopterDescriptor = $convert.base64Decode(
    'CgtHR3lyb2NvcHRlchIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBInCg9zZXJ2aWNlX2NlaWxpbmcYAiABKAVSDnNlcnZpY2VDZWlsaW5nEhAKA2tleRgDIAEoCVIDa2V5');
@$core.Deprecated('Use gListOfGyrocopterDescriptor instead')
const GListOfGyrocopter$json = {
  '1': 'GListOfGyrocopter',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GGyrocopter', '10': 'items'},
  ],
};

/// Descriptor for `GListOfGyrocopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfGyrocopterDescriptor = $convert.base64Decode(
    'ChFHTGlzdE9mR3lyb2NvcHRlchIiCgVpdGVtcxgBIAMoCzIMLkdHeXJvY29wdGVyUgVpdGVtcw==');
