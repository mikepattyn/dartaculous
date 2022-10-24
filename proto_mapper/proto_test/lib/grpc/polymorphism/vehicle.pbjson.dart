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
const GFieldsOfVehicle$json = const {
  '1': 'GFieldsOfVehicle',
  '2': const [
    const {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert.base64Decode('ChBHRmllbGRzT2ZWZWhpY2xlEhYKBndlaWdodBgBIAEoBVIGd2VpZ2h0');
@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = const {
  '1': 'GVehicle',
  '2': const [
    const {'1': 'vehicle', '3': 1, '4': 1, '5': 11, '6': '.GFieldsOfVehicle', '9': 0, '10': 'vehicle'},
    const {'1': 'airplane', '3': 2, '4': 1, '5': 11, '6': '.GAirplane', '9': 0, '10': 'airplane'},
    const {'1': 'helicopter', '3': 3, '4': 1, '5': 11, '6': '.GHelicopter', '9': 0, '10': 'helicopter'},
    const {'1': 'gyrocopter', '3': 4, '4': 1, '5': 11, '6': '.GGyrocopter', '9': 0, '10': 'gyrocopter'},
    const {'1': 'balloon', '3': 5, '4': 1, '5': 11, '6': '.GBalloon', '9': 0, '10': 'balloon'},
    const {'1': 'car', '3': 6, '4': 1, '5': 11, '6': '.GCar', '9': 0, '10': 'car'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode('CghHVmVoaWNsZRItCgd2ZWhpY2xlGAEgASgLMhEuR0ZpZWxkc09mVmVoaWNsZUgAUgd2ZWhpY2xlEigKCGFpcnBsYW5lGAIgASgLMgouR0FpcnBsYW5lSABSCGFpcnBsYW5lEi4KCmhlbGljb3B0ZXIYAyABKAsyDC5HSGVsaWNvcHRlckgAUgpoZWxpY29wdGVyEi4KCmd5cm9jb3B0ZXIYBCABKAsyDC5HR3lyb2NvcHRlckgAUgpneXJvY29wdGVyEiUKB2JhbGxvb24YBSABKAsyCS5HQmFsbG9vbkgAUgdiYWxsb29uEhkKA2NhchgGIAEoCzIFLkdDYXJIAFIDY2FyQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfVehicleDescriptor instead')
const GListOfVehicle$json = const {
  '1': 'GListOfVehicle',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfVehicleDescriptor = $convert.base64Decode('Cg5HTGlzdE9mVmVoaWNsZRIfCgVpdGVtcxgBIAMoCzIJLkdWZWhpY2xlUgVpdGVtcw==');
