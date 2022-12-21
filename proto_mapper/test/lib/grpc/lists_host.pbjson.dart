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
    const {'1': 'nvbools_has_value', '3': 3, '4': 1, '5': 8, '10': 'nvboolsHasValue'},
    const {'1': 'vstrings', '3': 4, '4': 3, '5': 9, '10': 'vstrings'},
    const {'1': 'nvstrings', '3': 5, '4': 3, '5': 9, '10': 'nvstrings'},
    const {'1': 'nvstrings_has_value', '3': 6, '4': 1, '5': 8, '10': 'nvstringsHasValue'},
    const {'1': 'vdurations', '3': 7, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '10': 'vdurations'},
    const {'1': 'nvdurations', '3': 8, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '10': 'nvdurations'},
    const {'1': 'nvdurations_has_value', '3': 9, '4': 1, '5': 8, '10': 'nvdurationsHasValue'},
    const {'1': 'vdatetimes', '3': 10, '4': 3, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'vdatetimes'},
    const {'1': 'nvdatetimes', '3': 11, '4': 3, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'nvdatetimes'},
    const {'1': 'nvdatetimes_has_value', '3': 12, '4': 1, '5': 8, '10': 'nvdatetimesHasValue'},
    const {'1': 'vdecimals', '3': 13, '4': 3, '5': 12, '10': 'vdecimals'},
    const {'1': 'nvdecimals', '3': 14, '4': 3, '5': 12, '10': 'nvdecimals'},
    const {'1': 'nvdecimals_has_value', '3': 15, '4': 1, '5': 8, '10': 'nvdecimalsHasValue'},
    const {'1': 'vints', '3': 16, '4': 3, '5': 5, '10': 'vints'},
    const {'1': 'nvints', '3': 17, '4': 3, '5': 5, '10': 'nvints'},
    const {'1': 'nvints_has_value', '3': 18, '4': 1, '5': 8, '10': 'nvintsHasValue'},
    const {'1': 'vdoubles', '3': 19, '4': 3, '5': 1, '10': 'vdoubles'},
    const {'1': 'nvdoubles', '3': 20, '4': 3, '5': 1, '10': 'nvdoubles'},
    const {'1': 'nvdoubles_has_value', '3': 21, '4': 1, '5': 8, '10': 'nvdoublesHasValue'},
    const {'1': 'vappliance_types', '3': 22, '4': 3, '5': 14, '6': '.GApplianceType', '10': 'vapplianceTypes'},
    const {'1': 'nvappliance_types', '3': 23, '4': 3, '5': 14, '6': '.GApplianceType', '10': 'nvapplianceTypes'},
    const {'1': 'nvappliance_types_has_value', '3': 24, '4': 1, '5': 8, '10': 'nvapplianceTypesHasValue'},
  ],
};

/// Descriptor for `GListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListsHostDescriptor = $convert.base64Decode('CgpHTGlzdHNIb3N0EhYKBnZib29scxgBIAMoCFIGdmJvb2xzEhgKB252Ym9vbHMYAiADKAhSB252Ym9vbHMSKgoRbnZib29sc19oYXNfdmFsdWUYAyABKAhSD252Ym9vbHNIYXNWYWx1ZRIaCgh2c3RyaW5ncxgEIAMoCVIIdnN0cmluZ3MSHAoJbnZzdHJpbmdzGAUgAygJUgludnN0cmluZ3MSLgoTbnZzdHJpbmdzX2hhc192YWx1ZRgGIAEoCFIRbnZzdHJpbmdzSGFzVmFsdWUSOQoKdmR1cmF0aW9ucxgHIAMoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIKdmR1cmF0aW9ucxI7CgtudmR1cmF0aW9ucxgIIAMoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblILbnZkdXJhdGlvbnMSMgoVbnZkdXJhdGlvbnNfaGFzX3ZhbHVlGAkgASgIUhNudmR1cmF0aW9uc0hhc1ZhbHVlEjoKCnZkYXRldGltZXMYCiADKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgp2ZGF0ZXRpbWVzEjwKC252ZGF0ZXRpbWVzGAsgAygLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILbnZkYXRldGltZXMSMgoVbnZkYXRldGltZXNfaGFzX3ZhbHVlGAwgASgIUhNudmRhdGV0aW1lc0hhc1ZhbHVlEhwKCXZkZWNpbWFscxgNIAMoDFIJdmRlY2ltYWxzEh4KCm52ZGVjaW1hbHMYDiADKAxSCm52ZGVjaW1hbHMSMAoUbnZkZWNpbWFsc19oYXNfdmFsdWUYDyABKAhSEm52ZGVjaW1hbHNIYXNWYWx1ZRIUCgV2aW50cxgQIAMoBVIFdmludHMSFgoGbnZpbnRzGBEgAygFUgZudmludHMSKAoQbnZpbnRzX2hhc192YWx1ZRgSIAEoCFIObnZpbnRzSGFzVmFsdWUSGgoIdmRvdWJsZXMYEyADKAFSCHZkb3VibGVzEhwKCW52ZG91YmxlcxgUIAMoAVIJbnZkb3VibGVzEi4KE252ZG91Ymxlc19oYXNfdmFsdWUYFSABKAhSEW52ZG91Ymxlc0hhc1ZhbHVlEjoKEHZhcHBsaWFuY2VfdHlwZXMYFiADKA4yDy5HQXBwbGlhbmNlVHlwZVIPdmFwcGxpYW5jZVR5cGVzEjwKEW52YXBwbGlhbmNlX3R5cGVzGBcgAygOMg8uR0FwcGxpYW5jZVR5cGVSEG52YXBwbGlhbmNlVHlwZXMSPQobbnZhcHBsaWFuY2VfdHlwZXNfaGFzX3ZhbHVlGBggASgIUhhudmFwcGxpYW5jZVR5cGVzSGFzVmFsdWU=');
@$core.Deprecated('Use gListOfListsHostDescriptor instead')
const GListOfListsHost$json = const {
  '1': 'GListOfListsHost',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GListsHost', '10': 'items'},
  ],
};

/// Descriptor for `GListOfListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfListsHostDescriptor = $convert.base64Decode('ChBHTGlzdE9mTGlzdHNIb3N0EiEKBWl0ZW1zGAEgAygLMgsuR0xpc3RzSG9zdFIFaXRlbXM=');
