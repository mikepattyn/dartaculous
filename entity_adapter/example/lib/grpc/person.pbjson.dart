///
//  Generated code. Do not modify.
//  source: person.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = {
  '1': 'GPerson',
  '2': [
    {'1': 'assets', '3': 1, '4': 3, '5': 11, '6': '.GAsset', '10': 'assets'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode(
    'CgdHUGVyc29uEh8KBmFzc2V0cxgBIAMoCzIHLkdBc3NldFIGYXNzZXRzEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use gListOfPersonDescriptor instead')
const GListOfPerson$json = {
  '1': 'GListOfPerson',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GPerson', '10': 'items'},
  ],
};

/// Descriptor for `GListOfPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPersonDescriptor = $convert.base64Decode(
    'Cg1HTGlzdE9mUGVyc29uEh4KBWl0ZW1zGAEgAygLMgguR1BlcnNvblIFaXRlbXM=');
