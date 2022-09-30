///
//  Generated code. Do not modify.
//  source: polymorphism/helicopter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gHelicopterDescriptor instead')
const GHelicopter$json = {
  '1': 'GHelicopter',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'service_ceiling', '3': 2, '4': 1, '5': 5, '10': 'serviceCeiling'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GHelicopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gHelicopterDescriptor = $convert.base64Decode(
    'CgtHSGVsaWNvcHRlchIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBInCg9zZXJ2aWNlX2NlaWxpbmcYAiABKAVSDnNlcnZpY2VDZWlsaW5nEhAKA2tleRgDIAEoCVIDa2V5');
@$core.Deprecated('Use gListOfHelicopterDescriptor instead')
const GListOfHelicopter$json = {
  '1': 'GListOfHelicopter',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GHelicopter', '10': 'items'},
  ],
};

/// Descriptor for `GListOfHelicopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfHelicopterDescriptor = $convert.base64Decode(
    'ChFHTGlzdE9mSGVsaWNvcHRlchIiCgVpdGVtcxgBIAMoCzIMLkdIZWxpY29wdGVyUgVpdGVtcw==');
