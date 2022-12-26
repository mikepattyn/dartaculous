///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gFieldsOfAircraftDescriptor instead')
const GFieldsOfAircraft$json = const {
  '1': 'GFieldsOfAircraft',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.model.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'service_ceiling', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GFieldsOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAircraftDescriptor = $convert.base64Decode('ChFHRmllbGRzT2ZBaXJjcmFmdBJZChJmaWVsZHNPZlN1cGVyQ2xhc3MYAyABKAsyKS5zcXVhcmVhbGZhLm5vemFyZC5tb2RlbC5HRmllbGRzT2ZWZWhpY2xlUhJmaWVsZHNPZlN1cGVyQ2xhc3MSRAoPc2VydmljZV9jZWlsaW5nGAIgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSDnNlcnZpY2VDZWlsaW5n');
@$core.Deprecated('Use gAircraftDescriptor instead')
const GAircraft$json = const {
  '1': 'GAircraft',
  '2': const [
    const {'1': 'aircraft', '3': 5, '4': 1, '5': 11, '6': '.squarealfa.nozard.model.GFieldsOfAircraft', '9': 0, '10': 'aircraft'},
    const {'1': 'airplane', '3': 7, '4': 1, '5': 11, '6': '.squarealfa.nozard.model.GAirplane', '9': 0, '10': 'airplane'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAircraftDescriptor = $convert.base64Decode('CglHQWlyY3JhZnQSSAoIYWlyY3JhZnQYBSABKAsyKi5zcXVhcmVhbGZhLm5vemFyZC5tb2RlbC5HRmllbGRzT2ZBaXJjcmFmdEgAUghhaXJjcmFmdBJACghhaXJwbGFuZRgHIAEoCzIiLnNxdWFyZWFsZmEubm96YXJkLm1vZGVsLkdBaXJwbGFuZUgAUghhaXJwbGFuZUIHCgVwcm9wcw==');
@$core.Deprecated('Use gListOfAircraftDescriptor instead')
const GListOfAircraft$json = const {
  '1': 'GListOfAircraft',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.model.GAircraft', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAircraftDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQWlyY3JhZnQSOAoFaXRlbXMYASADKAsyIi5zcXVhcmVhbGZhLm5vemFyZC5tb2RlbC5HQWlyY3JhZnRSBWl0ZW1z');
@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = const {
  '1': 'GAirplane',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.model.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
    const {'1': 'wingspan', '3': 2, '4': 1, '5': 5, '10': 'wingspan'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode('CglHQWlycGxhbmUSWgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMiouc3F1YXJlYWxmYS5ub3phcmQubW9kZWwuR0ZpZWxkc09mQWlyY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcxIaCgh3aW5nc3BhbhgCIAEoBVIId2luZ3NwYW4=');
@$core.Deprecated('Use gListOfAirplaneDescriptor instead')
const GListOfAirplane$json = const {
  '1': 'GListOfAirplane',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.model.GAirplane', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAirplaneDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQWlycGxhbmUSOAoFaXRlbXMYASADKAsyIi5zcXVhcmVhbGZhLm5vemFyZC5tb2RlbC5HQWlycGxhbmVSBWl0ZW1z');
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
    const {'1': 'vehicle', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.model.GFieldsOfVehicle', '9': 0, '10': 'vehicle'},
    const {'1': 'aircraft', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.model.GAircraft', '9': 0, '10': 'aircraft'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode('CghHVmVoaWNsZRJFCgd2ZWhpY2xlGAEgASgLMikuc3F1YXJlYWxmYS5ub3phcmQubW9kZWwuR0ZpZWxkc09mVmVoaWNsZUgAUgd2ZWhpY2xlEkAKCGFpcmNyYWZ0GAMgASgLMiIuc3F1YXJlYWxmYS5ub3phcmQubW9kZWwuR0FpcmNyYWZ0SABSCGFpcmNyYWZ0QgcKBXByb3Bz');
@$core.Deprecated('Use gListOfVehicleDescriptor instead')
const GListOfVehicle$json = const {
  '1': 'GListOfVehicle',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.model.GVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfVehicleDescriptor = $convert.base64Decode('Cg5HTGlzdE9mVmVoaWNsZRI3CgVpdGVtcxgBIAMoCzIhLnNxdWFyZWFsZmEubm96YXJkLm1vZGVsLkdWZWhpY2xlUgVpdGVtcw==');
@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = const {
  '1': 'GPerson',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'name'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode('CgdHUGVyc29uEjAKBG5hbWUYAiABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSBG5hbWU=');
@$core.Deprecated('Use gListOfPersonDescriptor instead')
const GListOfPerson$json = const {
  '1': 'GListOfPerson',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.model.GPerson', '10': 'items'},
  ],
};

/// Descriptor for `GListOfPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPersonDescriptor = $convert.base64Decode('Cg1HTGlzdE9mUGVyc29uEjYKBWl0ZW1zGAEgAygLMiAuc3F1YXJlYWxmYS5ub3phcmQubW9kZWwuR1BlcnNvblIFaXRlbXM=');
@$core.Deprecated('Use gAnimalDescriptor instead')
const GAnimal$json = const {
  '1': 'GAnimal',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GAnimal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAnimalDescriptor = $convert.base64Decode('CgdHQW5pbWFsEiAKC2Rlc2NyaXB0aW9uGAEgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use gListOfAnimalDescriptor instead')
const GListOfAnimal$json = const {
  '1': 'GListOfAnimal',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.model.GAnimal', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAnimal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAnimalDescriptor = $convert.base64Decode('Cg1HTGlzdE9mQW5pbWFsEjYKBWl0ZW1zGAEgAygLMiAuc3F1YXJlYWxmYS5ub3phcmQubW9kZWwuR0FuaW1hbFIFaXRlbXM=');
