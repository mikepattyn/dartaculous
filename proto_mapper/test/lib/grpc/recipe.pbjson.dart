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
const GRecipe$json = const {
  '1': 'GRecipe',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'description'},
    const {'1': 'category', '3': 3, '4': 1, '5': 11, '6': '.GCategory', '10': 'category'},
    const {'1': 'ingredients', '3': 4, '4': 3, '5': 11, '6': '.GIngredient', '10': 'ingredients'},
    const {'1': 'publish_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'publishDate'},
    const {'1': 'expiry_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiryDate'},
    const {'1': 'preparation_duration', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'preparationDuration'},
    const {'1': 'total_duration', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'totalDuration'},
    const {'1': 'is_published', '3': 9, '4': 1, '5': 8, '10': 'isPublished'},
    const {'1': 'requires_robot', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'requiresRobot'},
    const {'1': 'gross_weight', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.DoubleValue', '10': 'grossWeight'},
    const {'1': 'net_weight', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.DoubleValue', '10': 'netWeight'},
    const {'1': 'main_appliance_type', '3': 13, '4': 1, '5': 14, '6': '.GApplianceType', '10': 'mainApplianceType'},
    const {'1': 'secondary_appliance_type', '3': 15, '4': 1, '5': 11, '6': '.GApplianceType_Message', '10': 'secondaryApplianceType'},
    const {'1': 'tags', '3': 16, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'extra_tags', '3': 17, '4': 3, '5': 9, '10': 'extraTags'},
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode('CgdHUmVjaXBlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRI+CgtkZXNjcmlwdGlvbhgCIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZVILZGVzY3JpcHRpb24SJgoIY2F0ZWdvcnkYAyABKAsyCi5HQ2F0ZWdvcnlSCGNhdGVnb3J5Ei4KC2luZ3JlZGllbnRzGAQgAygLMgwuR0luZ3JlZGllbnRSC2luZ3JlZGllbnRzEj0KDHB1Ymxpc2hfZGF0ZRgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3B1Ymxpc2hEYXRlEjsKC2V4cGlyeV9kYXRlGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKZXhwaXJ5RGF0ZRJMChRwcmVwYXJhdGlvbl9kdXJhdGlvbhgHIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblITcHJlcGFyYXRpb25EdXJhdGlvbhJACg50b3RhbF9kdXJhdGlvbhgIIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblINdG90YWxEdXJhdGlvbhIhCgxpc19wdWJsaXNoZWQYCSABKAhSC2lzUHVibGlzaGVkEkEKDnJlcXVpcmVzX3JvYm90GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVINcmVxdWlyZXNSb2JvdBI/Cgxncm9zc193ZWlnaHQYCyABKAsyHC5nb29nbGUucHJvdG9idWYuRG91YmxlVmFsdWVSC2dyb3NzV2VpZ2h0EjsKCm5ldF93ZWlnaHQYDCABKAsyHC5nb29nbGUucHJvdG9idWYuRG91YmxlVmFsdWVSCW5ldFdlaWdodBI/ChNtYWluX2FwcGxpYW5jZV90eXBlGA0gASgOMg8uR0FwcGxpYW5jZVR5cGVSEW1haW5BcHBsaWFuY2VUeXBlElEKGHNlY29uZGFyeV9hcHBsaWFuY2VfdHlwZRgPIAEoCzIXLkdBcHBsaWFuY2VUeXBlX01lc3NhZ2VSFnNlY29uZGFyeUFwcGxpYW5jZVR5cGUSEgoEdGFncxgQIAMoCVIEdGFncxIdCgpleHRyYV90YWdzGBEgAygJUglleHRyYVRhZ3M=');
@$core.Deprecated('Use gListOfRecipeDescriptor instead')
const GListOfRecipe$json = const {
  '1': 'GListOfRecipe',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GRecipe', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRecipeDescriptor = $convert.base64Decode('Cg1HTGlzdE9mUmVjaXBlEh4KBWl0ZW1zGAEgAygLMgguR1JlY2lwZVIFaXRlbXM=');
