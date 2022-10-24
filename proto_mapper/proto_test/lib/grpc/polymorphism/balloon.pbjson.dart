///
//  Generated code. Do not modify.
//  source: polymorphism/balloon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gBalloonDescriptor instead')
const GBalloon$json = const {
  '1': 'GBalloon',
  '2': const [
    const {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'service_ceiling', '3': 3, '4': 1, '5': 5, '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBalloonDescriptor = $convert.base64Decode('CghHQmFsbG9vbhIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBIQCgNrZXkYAiABKAlSA2tleRInCg9zZXJ2aWNlX2NlaWxpbmcYAyABKAVSDnNlcnZpY2VDZWlsaW5n');
@$core.Deprecated('Use gListOfBalloonDescriptor instead')
const GListOfBalloon$json = const {
  '1': 'GListOfBalloon',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GBalloon', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBalloonDescriptor = $convert.base64Decode('Cg5HTGlzdE9mQmFsbG9vbhIfCgVpdGVtcxgBIAMoCzIJLkdCYWxsb29uUgVpdGVtcw==');
