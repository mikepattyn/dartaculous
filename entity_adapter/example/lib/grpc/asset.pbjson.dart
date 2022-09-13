///
//  Generated code. Do not modify.
//  source: asset.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAssetDescriptor instead')
const GAsset$json = {
  '1': 'GAsset',
  '2': [
    {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `GAsset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAssetDescriptor = $convert.base64Decode(
    'CgZHQXNzZXQSIAoLZGVzY3JpcHRpb24YASABKAlSC2Rlc2NyaXB0aW9uEhQKBXZhbHVlGAIgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use gListOfAssetDescriptor instead')
const GListOfAsset$json = {
  '1': 'GListOfAsset',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GAsset', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAsset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAssetDescriptor = $convert.base64Decode(
    'CgxHTGlzdE9mQXNzZXQSHQoFaXRlbXMYASADKAsyBy5HQXNzZXRSBWl0ZW1z');
