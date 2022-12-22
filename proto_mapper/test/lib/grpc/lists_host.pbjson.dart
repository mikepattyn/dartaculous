///
//  Generated code. Do not modify.
//  source: lists_host.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gListsHostDescriptor instead')
const GListsHost$json = const {
  '1': 'GListsHost',
  '2': const [
    const {'1': 'vbools', '3': 1, '4': 3, '5': 8, '10': 'vbools'},
    const {'1': 'nvbools', '3': 2, '4': 3, '5': 8, '10': 'nvbools'},
    const {'1': 'vstrings', '3': 3, '4': 3, '5': 9, '10': 'vstrings'},
    const {'1': 'nvstrings', '3': 4, '4': 3, '5': 9, '10': 'nvstrings'},
    const {'1': 'vdurations', '3': 5, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '10': 'vdurations'},
    const {'1': 'nvdurations', '3': 6, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '10': 'nvdurations'},
    const {'1': 'vdatetimes', '3': 7, '4': 3, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'vdatetimes'},
    const {'1': 'nvdatetimes', '3': 8, '4': 3, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'nvdatetimes'},
    const {'1': 'vdecimals', '3': 9, '4': 3, '5': 12, '10': 'vdecimals'},
    const {'1': 'nvdecimals', '3': 11, '4': 3, '5': 12, '10': 'nvdecimals'},
    const {'1': 'vints', '3': 12, '4': 3, '5': 5, '10': 'vints'},
    const {'1': 'nvints', '3': 13, '4': 3, '5': 5, '10': 'nvints'},
    const {'1': 'vdoubles', '3': 14, '4': 3, '5': 1, '10': 'vdoubles'},
    const {'1': 'nvdoubles', '3': 15, '4': 3, '5': 1, '10': 'nvdoubles'},
    const {'1': 'vappliance_types', '3': 16, '4': 3, '5': 14, '6': '.GApplianceType', '10': 'vapplianceTypes'},
    const {'1': 'nvappliance_types', '3': 18, '4': 3, '5': 14, '6': '.GApplianceType', '10': 'nvapplianceTypes'},
  ],
};

/// Descriptor for `GListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListsHostDescriptor = $convert.base64Decode('CgpHTGlzdHNIb3N0EhYKBnZib29scxgBIAMoCFIGdmJvb2xzEhgKB252Ym9vbHMYAiADKAhSB252Ym9vbHMSGgoIdnN0cmluZ3MYAyADKAlSCHZzdHJpbmdzEhwKCW52c3RyaW5ncxgEIAMoCVIJbnZzdHJpbmdzEjkKCnZkdXJhdGlvbnMYBSADKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCnZkdXJhdGlvbnMSOwoLbnZkdXJhdGlvbnMYBiADKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SC252ZHVyYXRpb25zEjoKCnZkYXRldGltZXMYByADKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgp2ZGF0ZXRpbWVzEjwKC252ZGF0ZXRpbWVzGAggAygLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILbnZkYXRldGltZXMSHAoJdmRlY2ltYWxzGAkgAygMUgl2ZGVjaW1hbHMSHgoKbnZkZWNpbWFscxgLIAMoDFIKbnZkZWNpbWFscxIUCgV2aW50cxgMIAMoBVIFdmludHMSFgoGbnZpbnRzGA0gAygFUgZudmludHMSGgoIdmRvdWJsZXMYDiADKAFSCHZkb3VibGVzEhwKCW52ZG91YmxlcxgPIAMoAVIJbnZkb3VibGVzEjoKEHZhcHBsaWFuY2VfdHlwZXMYECADKA4yDy5HQXBwbGlhbmNlVHlwZVIPdmFwcGxpYW5jZVR5cGVzEjwKEW52YXBwbGlhbmNlX3R5cGVzGBIgAygOMg8uR0FwcGxpYW5jZVR5cGVSEG52YXBwbGlhbmNlVHlwZXM=');
@$core.Deprecated('Use gListOfListsHostDescriptor instead')
const GListOfListsHost$json = const {
  '1': 'GListOfListsHost',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GListsHost', '10': 'items'},
  ],
};

/// Descriptor for `GListOfListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfListsHostDescriptor = $convert.base64Decode('ChBHTGlzdE9mTGlzdHNIb3N0EiEKBWl0ZW1zGAEgAygLMgsuR0xpc3RzSG9zdFIFaXRlbXM=');
