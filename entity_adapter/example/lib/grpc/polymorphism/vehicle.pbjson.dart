///
//  Generated code. Do not modify.
//  source: polymorphism/vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gFieldsOfVehicleDescriptor instead')
const GFieldsOfVehicle$json = {
  '1': 'GFieldsOfVehicle',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert
    .base64Decode('ChBHRmllbGRzT2ZWZWhpY2xlEhYKBndlaWdodBgBIAEoBVIGd2VpZ2h0');
@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = {
  '1': 'GVehicle',
  '2': [
    {
      '1': 'vehicle',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GFieldsOfVehicle',
      '9': 0,
      '10': 'vehicle'
    },
    {'1': 'car', '3': 2, '4': 1, '5': 11, '6': '.GCar', '9': 0, '10': 'car'},
    {
      '1': 'airplane',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.GAirplane',
      '9': 0,
      '10': 'airplane'
    },
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode(
    'CghHVmVoaWNsZRItCgd2ZWhpY2xlGAEgASgLMhEuR0ZpZWxkc09mVmVoaWNsZUgAUgd2ZWhpY2xlEhkKA2NhchgCIAEoCzIFLkdDYXJIAFIDY2FyEigKCGFpcnBsYW5lGAMgASgLMgouR0FpcnBsYW5lSABSCGFpcnBsYW5lQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfVehicleDescriptor instead')
const GListOfVehicle$json = {
  '1': 'GListOfVehicle',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfVehicleDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mVmVoaWNsZRIfCgVpdGVtcxgBIAMoCzIJLkdWZWhpY2xlUgVpdGVtcw==');
