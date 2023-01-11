///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gIngredientDescriptor instead')
const GIngredient$json = const {
  '1': 'GIngredient',
  '2': const [
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 1, '10': 'quantity'},
    const {'1': 'batch_size', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'batchSize'},
    const {'1': 'estimated_preparation_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'estimatedPreparationTime'},
    const {'1': 'expiry_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiryDate'},
  ],
};

/// Descriptor for `GIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gIngredientDescriptor = $convert.base64Decode('CgtHSW5ncmVkaWVudBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SGgoIcXVhbnRpdHkYAyABKAFSCHF1YW50aXR5EjoKCmJhdGNoX3NpemUYBCABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIJYmF0Y2hTaXplElcKGmVzdGltYXRlZF9wcmVwYXJhdGlvbl90aW1lGAUgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhhlc3RpbWF0ZWRQcmVwYXJhdGlvblRpbWUSOwoLZXhwaXJ5X2RhdGUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgpleHBpcnlEYXRl');
@$core.Deprecated('Use gListOfIngredientDescriptor instead')
const GListOfIngredient$json = const {
  '1': 'GListOfIngredient',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.com.mycompany.myproject.GIngredient', '10': 'items'},
  ],
};

/// Descriptor for `GListOfIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfIngredientDescriptor = $convert.base64Decode('ChFHTGlzdE9mSW5ncmVkaWVudBI6CgVpdGVtcxgBIAMoCzIkLmNvbS5teWNvbXBhbnkubXlwcm9qZWN0LkdJbmdyZWRpZW50UgVpdGVtcw==');
@$core.Deprecated('Use gRecipeDescriptor instead')
const GRecipe$json = const {
  '1': 'GRecipe',
  '2': const [
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'ptitle', '3': 3, '4': 1, '5': 9, '10': 'ptitle'},
    const {'1': 'ingredients', '3': 4, '4': 3, '5': 11, '6': '.com.mycompany.myproject.GIngredient', '10': 'ingredients'},
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode('CgdHUmVjaXBlEg4KAmlkGAIgASgJUgJpZBIWCgZwdGl0bGUYAyABKAlSBnB0aXRsZRJGCgtpbmdyZWRpZW50cxgEIAMoCzIkLmNvbS5teWNvbXBhbnkubXlwcm9qZWN0LkdJbmdyZWRpZW50UgtpbmdyZWRpZW50cw==');
@$core.Deprecated('Use gListOfRecipeDescriptor instead')
const GListOfRecipe$json = const {
  '1': 'GListOfRecipe',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.com.mycompany.myproject.GRecipe', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRecipeDescriptor = $convert.base64Decode('Cg1HTGlzdE9mUmVjaXBlEjYKBWl0ZW1zGAEgAygLMiAuY29tLm15Y29tcGFueS5teXByb2plY3QuR1JlY2lwZVIFaXRlbXM=');
@$core.Deprecated('Use gFieldsOfVehicleDescriptor instead')
const GFieldsOfVehicle$json = const {
  '1': 'GFieldsOfVehicle',
  '2': const [
    const {'1': 'weight', '3': 2, '4': 1, '5': 1, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert.base64Decode('ChBHRmllbGRzT2ZWZWhpY2xlEhYKBndlaWdodBgCIAEoAVIGd2VpZ2h0');
@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = const {
  '1': 'GVehicle',
  '2': const [
    const {'1': 'vehicle', '3': 1, '4': 1, '5': 11, '6': '.com.mycompany.myproject.GFieldsOfVehicle', '9': 0, '10': 'vehicle'},
    const {'1': 'car', '3': 2, '4': 1, '5': 11, '6': '.com.mycompany.myproject.GCar', '9': 0, '10': 'car'},
    const {'1': 'airplane', '3': 3, '4': 1, '5': 11, '6': '.com.mycompany.myproject.GAirplane', '9': 0, '10': 'airplane'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode('CghHVmVoaWNsZRJFCgd2ZWhpY2xlGAEgASgLMikuY29tLm15Y29tcGFueS5teXByb2plY3QuR0ZpZWxkc09mVmVoaWNsZUgAUgd2ZWhpY2xlEjEKA2NhchgCIAEoCzIdLmNvbS5teWNvbXBhbnkubXlwcm9qZWN0LkdDYXJIAFIDY2FyEkAKCGFpcnBsYW5lGAMgASgLMiIuY29tLm15Y29tcGFueS5teXByb2plY3QuR0FpcnBsYW5lSABSCGFpcnBsYW5lQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfVehicleDescriptor instead')
const GListOfVehicle$json = const {
  '1': 'GListOfVehicle',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.com.mycompany.myproject.GVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfVehicleDescriptor = $convert.base64Decode('Cg5HTGlzdE9mVmVoaWNsZRI3CgVpdGVtcxgBIAMoCzIhLmNvbS5teWNvbXBhbnkubXlwcm9qZWN0LkdWZWhpY2xlUgVpdGVtcw==');
@$core.Deprecated('Use gCarDescriptor instead')
const GCar$json = const {
  '1': 'GCar',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.mycompany.myproject.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'number_of_doors', '3': 2, '4': 1, '5': 5, '10': 'numberOfDoors'},
  ],
};

/// Descriptor for `GCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCarDescriptor = $convert.base64Decode('CgRHQ2FyElkKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIpLmNvbS5teWNvbXBhbnkubXlwcm9qZWN0LkdGaWVsZHNPZlZlaGljbGVSEmZpZWxkc09mU3VwZXJDbGFzcxImCg9udW1iZXJfb2ZfZG9vcnMYAiABKAVSDW51bWJlck9mRG9vcnM=');
@$core.Deprecated('Use gListOfCarDescriptor instead')
const GListOfCar$json = const {
  '1': 'GListOfCar',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.com.mycompany.myproject.GCar', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCarDescriptor = $convert.base64Decode('CgpHTGlzdE9mQ2FyEjMKBWl0ZW1zGAEgAygLMh0uY29tLm15Y29tcGFueS5teXByb2plY3QuR0NhclIFaXRlbXM=');
@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = const {
  '1': 'GAirplane',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.mycompany.myproject.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'registration', '3': 2, '4': 1, '5': 9, '10': 'registration'},
    const {'1': 'service_ceiling', '3': 3, '4': 1, '5': 5, '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode('CglHQWlycGxhbmUSWQoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMikuY29tLm15Y29tcGFueS5teXByb2plY3QuR0ZpZWxkc09mVmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiIKDHJlZ2lzdHJhdGlvbhgCIAEoCVIMcmVnaXN0cmF0aW9uEicKD3NlcnZpY2VfY2VpbGluZxgDIAEoBVIOc2VydmljZUNlaWxpbmc=');
@$core.Deprecated('Use gListOfAirplaneDescriptor instead')
const GListOfAirplane$json = const {
  '1': 'GListOfAirplane',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.com.mycompany.myproject.GAirplane', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAirplaneDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQWlycGxhbmUSOAoFaXRlbXMYASADKAsyIi5jb20ubXljb21wYW55Lm15cHJvamVjdC5HQWlycGxhbmVSBWl0ZW1z');
