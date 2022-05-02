///
//  Generated code. Do not modify.
//  source: polymorphism/aircraft.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAircraftDescriptor instead')
const GAircraft$json = {
  '1': 'GAircraft',
  '2': [
    {
      '1': 'airplane',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GAirplane',
      '9': 0,
      '10': 'airplane'
    },
    {
      '1': 'helicopter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GHelicopter',
      '9': 0,
      '10': 'helicopter'
    },
    {
      '1': 'gyrocopter',
      '3': 3,
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

/// Descriptor for `GAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAircraftDescriptor = $convert.base64Decode(
    'CglHQWlyY3JhZnQSKAoIYWlycGxhbmUYASABKAsyCi5HQWlycGxhbmVIAFIIYWlycGxhbmUSLgoKaGVsaWNvcHRlchgCIAEoCzIMLkdIZWxpY29wdGVySABSCmhlbGljb3B0ZXISLgoKZ3lyb2NvcHRlchgDIAEoCzIMLkdHeXJvY29wdGVySABSCmd5cm9jb3B0ZXJCBwoFcHJvcHM=');
@$core.Deprecated('Use gListOfAircraftDescriptor instead')
const GListOfAircraft$json = {
  '1': 'GListOfAircraft',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GAircraft', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAircraftDescriptor = $convert.base64Decode(
    'Cg9HTGlzdE9mQWlyY3JhZnQSIAoFaXRlbXMYASADKAsyCi5HQWlyY3JhZnRSBWl0ZW1z');
