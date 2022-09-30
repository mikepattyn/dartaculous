///
//  Generated code. Do not modify.
//  source: polymorphism/airplane.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = {
  '1': 'GAirplane',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'service_ceiling', '3': 2, '4': 1, '5': 5, '10': 'serviceCeiling'},
    {'1': 'wingspan', '3': 3, '4': 1, '5': 5, '10': 'wingspan'},
    {'1': 'key', '3': 4, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode(
    'CglHQWlycGxhbmUSFgoGd2VpZ2h0GAEgASgFUgZ3ZWlnaHQSJwoPc2VydmljZV9jZWlsaW5nGAIgASgFUg5zZXJ2aWNlQ2VpbGluZxIaCgh3aW5nc3BhbhgDIAEoBVIId2luZ3NwYW4SEAoDa2V5GAQgASgJUgNrZXk=');
@$core.Deprecated('Use gListOfAirplaneDescriptor instead')
const GListOfAirplane$json = {
  '1': 'GListOfAirplane',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GAirplane', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAirplaneDescriptor = $convert.base64Decode(
    'Cg9HTGlzdE9mQWlycGxhbmUSIAoFaXRlbXMYASADKAsyCi5HQWlycGxhbmVSBWl0ZW1z');
