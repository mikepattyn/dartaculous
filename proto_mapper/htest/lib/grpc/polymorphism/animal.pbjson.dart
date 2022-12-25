///
//  Generated code. Do not modify.
//  source: polymorphism/animal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GAnimal', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAnimal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAnimalDescriptor = $convert.base64Decode('Cg1HTGlzdE9mQW5pbWFsEh4KBWl0ZW1zGAEgAygLMgguR0FuaW1hbFIFaXRlbXM=');
