///
//  Generated code. Do not modify.
//  source: auth/claims_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use claimsRequestDescriptor instead')
const ClaimsRequest$json = const {
  '1': 'ClaimsRequest',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {
      '1': 'claims',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.ClaimBase',
      '10': 'claims'
    },
  ],
};

/// Descriptor for `ClaimsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List claimsRequestDescriptor = $convert.base64Decode(
    'Cg1DbGFpbXNSZXF1ZXN0EhAKA3VpZBgBIAEoCVIDdWlkEiIKBmNsYWltcxgCIAMoCzIKLkNsYWltQmFzZVIGY2xhaW1z');
