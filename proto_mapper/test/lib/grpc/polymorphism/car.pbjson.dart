///
//  Generated code. Do not modify.
//  source: polymorphism/car.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gCarDescriptor instead')
const GCar$json = const {
  '1': 'GCar',
  '2': const [
    const {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    const {'1': 'number_of_doors', '3': 2, '4': 1, '5': 5, '10': 'numberOfDoors'},
  ],
};

/// Descriptor for `GCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCarDescriptor = $convert.base64Decode('CgRHQ2FyEhYKBndlaWdodBgBIAEoBVIGd2VpZ2h0EiYKD251bWJlcl9vZl9kb29ycxgCIAEoBVINbnVtYmVyT2ZEb29ycw==');
@$core.Deprecated('Use gListOfCarDescriptor instead')
const GListOfCar$json = const {
  '1': 'GListOfCar',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GCar', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCarDescriptor = $convert.base64Decode('CgpHTGlzdE9mQ2FyEhsKBWl0ZW1zGAEgAygLMgUuR0NhclIFaXRlbXM=');
