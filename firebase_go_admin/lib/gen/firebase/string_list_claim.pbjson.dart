///
//  Generated code. Do not modify.
//  source: firebase/string_list_claim.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use stringListClaimDescriptor instead')
const StringListClaim$json = const {
  '1': 'StringListClaim',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 3, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `StringListClaim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringListClaimDescriptor = $convert.base64Decode(
    'Cg9TdHJpbmdMaXN0Q2xhaW0SEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgV2YWx1ZRgCIAMoCVIFdmFsdWU=');
