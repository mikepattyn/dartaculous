///
//  Generated code. Do not modify.
//  source: fcm/change_notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use changeNotificationDescriptor instead')
const ChangeNotification$json = const {
  '1': 'ChangeNotification',
  '2': const [
    const {'1': 'tokens', '3': 1, '4': 3, '5': 9, '10': 'tokens'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'typeName', '3': 3, '4': 1, '5': 9, '10': 'typeName'},
    const {'1': 'rev', '3': 4, '4': 1, '5': 9, '10': 'rev'},
    const {'1': 'hashCode', '3': 5, '4': 1, '5': 9, '10': 'hashCode'},
  ],
};

/// Descriptor for `ChangeNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeNotificationDescriptor = $convert.base64Decode(
    'ChJDaGFuZ2VOb3RpZmljYXRpb24SFgoGdG9rZW5zGAEgAygJUgZ0b2tlbnMSEAoDa2V5GAIgASgJUgNrZXkSGgoIdHlwZU5hbWUYAyABKAlSCHR5cGVOYW1lEhAKA3JldhgEIAEoCVIDcmV2EhoKCGhhc2hDb2RlGAUgASgJUghoYXNoQ29kZQ==');
