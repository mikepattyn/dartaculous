///
//  Generated code. Do not modify.
//  source: polymorphism/rotorcraft.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gRotorcraftDescriptor instead')
const GRotorcraft$json = {
  '1': 'GRotorcraft',
  '2': [
    {
      '1': 'helicopter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GHelicopter',
      '9': 0,
      '10': 'helicopter'
    },
    {
      '1': 'gyrocopter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GGyrocopter',
      '9': 0,
      '10': 'gyrocopter'
    },
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRotorcraftDescriptor = $convert.base64Decode(
    'CgtHUm90b3JjcmFmdBIuCgpoZWxpY29wdGVyGAEgASgLMgwuR0hlbGljb3B0ZXJIAFIKaGVsaWNvcHRlchIuCgpneXJvY29wdGVyGAIgASgLMgwuR0d5cm9jb3B0ZXJIAFIKZ3lyb2NvcHRlckIHCgVwcm9wcw==');
@$core.Deprecated('Use gListOfRotorcraftDescriptor instead')
const GListOfRotorcraft$json = {
  '1': 'GListOfRotorcraft',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GRotorcraft', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRotorcraftDescriptor = $convert.base64Decode(
    'ChFHTGlzdE9mUm90b3JjcmFmdBIiCgVpdGVtcxgBIAMoCzIMLkdSb3RvcmNyYWZ0UgVpdGVtcw==');
