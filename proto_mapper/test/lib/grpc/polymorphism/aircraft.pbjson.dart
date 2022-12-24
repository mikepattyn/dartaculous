///
//  Generated code. Do not modify.
//  source: polymorphism/aircraft.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gFieldsOfAircraftDescriptor instead')
const GFieldsOfAircraft$json = const {
  '1': 'GFieldsOfAircraft',
};

/// Descriptor for `GFieldsOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAircraftDescriptor = $convert.base64Decode('ChFHRmllbGRzT2ZBaXJjcmFmdA==');
@$core.Deprecated('Use gAircraftDescriptor instead')
const GAircraft$json = const {
  '1': 'GAircraft',
  '2': const [
    const {'1': 'airplane', '3': 1, '4': 1, '5': 11, '6': '.GAirplane', '9': 0, '10': 'airplane'},
    const {'1': 'helicopter', '3': 2, '4': 1, '5': 11, '6': '.GHelicopter', '9': 0, '10': 'helicopter'},
    const {'1': 'gyrocopter', '3': 3, '4': 1, '5': 11, '6': '.GGyrocopter', '9': 0, '10': 'gyrocopter'},
    const {'1': 'balloon', '3': 4, '4': 1, '5': 11, '6': '.GBalloon', '9': 0, '10': 'balloon'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAircraftDescriptor = $convert.base64Decode('CglHQWlyY3JhZnQSKAoIYWlycGxhbmUYASABKAsyCi5HQWlycGxhbmVIAFIIYWlycGxhbmUSLgoKaGVsaWNvcHRlchgCIAEoCzIMLkdIZWxpY29wdGVySABSCmhlbGljb3B0ZXISLgoKZ3lyb2NvcHRlchgDIAEoCzIMLkdHeXJvY29wdGVySABSCmd5cm9jb3B0ZXISJQoHYmFsbG9vbhgEIAEoCzIJLkdCYWxsb29uSABSB2JhbGxvb25CBwoFcHJvcHM=');
@$core.Deprecated('Use gListOfAircraftDescriptor instead')
const GListOfAircraft$json = const {
  '1': 'GListOfAircraft',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GAircraft', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAircraftDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQWlyY3JhZnQSIAoFaXRlbXMYASADKAsyCi5HQWlyY3JhZnRSBWl0ZW1z');
