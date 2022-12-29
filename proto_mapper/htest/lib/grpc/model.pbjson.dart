///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = const {
  '1': 'GPerson',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GAnimal', '10': 'fieldsOfSuperClass'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'description'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode('CgdHUGVyc29uElIKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIiLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0FuaW1hbFISZmllbGRzT2ZTdXBlckNsYXNzEhIKBG5hbWUYAiABKAlSBG5hbWUSPgoLZGVzY3JpcHRpb24YAyABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use gListOfPersonDescriptor instead')
const GListOfPerson$json = const {
  '1': 'GListOfPerson',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GPerson', '10': 'items'},
  ],
};

/// Descriptor for `GListOfPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPersonDescriptor = $convert.base64Decode('Cg1HTGlzdE9mUGVyc29uEjgKBWl0ZW1zGAEgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUGVyc29uUgVpdGVtcw==');
@$core.Deprecated('Use gAnimalDescriptor instead')
const GAnimal$json = const {
  '1': 'GAnimal',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfBeing', '10': 'fieldsOfSuperClass'},
    const {'1': 'height', '3': 2, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'life_span', '3': 3, '4': 1, '5': 5, '10': 'lifeSpan'},
    const {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `GAnimal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAnimalDescriptor = $convert.base64Decode('CgdHQW5pbWFsElkKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIpLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mQmVpbmdSEmZpZWxkc09mU3VwZXJDbGFzcxIWCgZoZWlnaHQYAiABKAVSBmhlaWdodBIbCglsaWZlX3NwYW4YAyABKAVSCGxpZmVTcGFuEhQKBWNvbG9yGAQgASgJUgVjb2xvcg==');
@$core.Deprecated('Use gListOfAnimalDescriptor instead')
const GListOfAnimal$json = const {
  '1': 'GListOfAnimal',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GAnimal', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAnimal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAnimalDescriptor = $convert.base64Decode('Cg1HTGlzdE9mQW5pbWFsEjgKBWl0ZW1zGAEgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQW5pbWFsUgVpdGVtcw==');
@$core.Deprecated('Use gFieldsOfBeingDescriptor instead')
const GFieldsOfBeing$json = const {
  '1': 'GFieldsOfBeing',
  '2': const [
    const {'1': 'mass', '3': 2, '4': 1, '5': 1, '10': 'mass'},
    const {'1': 'option_descr', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'optionDescr'},
  ],
};

/// Descriptor for `GFieldsOfBeing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfBeingDescriptor = $convert.base64Decode('Cg5HRmllbGRzT2ZCZWluZxISCgRtYXNzGAIgASgBUgRtYXNzEj8KDG9wdGlvbl9kZXNjchgDIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZVILb3B0aW9uRGVzY3I=');
@$core.Deprecated('Use gBeingDescriptor instead')
const GBeing$json = const {
  '1': 'GBeing',
  '2': const [
    const {'1': 'being', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfBeing', '9': 0, '10': 'being'},
    const {'1': 'animal', '3': 2, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GAnimal', '9': 0, '10': 'animal'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GBeing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBeingDescriptor = $convert.base64Decode('CgZHQmVpbmcSQQoFYmVpbmcYASABKAsyKS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZkJlaW5nSABSBWJlaW5nEjwKBmFuaW1hbBgCIAEoCzIiLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0FuaW1hbEgAUgZhbmltYWxCBwoFcHJvcHM=');
@$core.Deprecated('Use gListOfBeingDescriptor instead')
const GListOfBeing$json = const {
  '1': 'GListOfBeing',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GBeing', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBeing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBeingDescriptor = $convert.base64Decode('CgxHTGlzdE9mQmVpbmcSNwoFaXRlbXMYASADKAsyIS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdCZWluZ1IFaXRlbXM=');
