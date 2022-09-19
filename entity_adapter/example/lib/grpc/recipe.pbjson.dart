///
//  Generated code. Do not modify.
//  source: recipe.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gRecipeDescriptor instead')
const GRecipe$json = {
  '1': 'GRecipe',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'description_has_value',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'descriptionHasValue'
    },
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode(
    'CgdHUmVjaXBlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SMgoVZGVzY3JpcHRpb25faGFzX3ZhbHVlGAMgASgIUhNkZXNjcmlwdGlvbkhhc1ZhbHVl');
@$core.Deprecated('Use gListOfRecipeDescriptor instead')
const GListOfRecipe$json = {
  '1': 'GListOfRecipe',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GRecipe', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRecipeDescriptor = $convert.base64Decode(
    'Cg1HTGlzdE9mUmVjaXBlEh4KBWl0ZW1zGAEgAygLMgguR1JlY2lwZVIFaXRlbXM=');
