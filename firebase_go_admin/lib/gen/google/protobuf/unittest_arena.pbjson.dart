///
//  Generated code. Do not modify.
//  source: google/protobuf/unittest_arena.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nestedMessageDescriptor instead')
const NestedMessage$json = const {
  '1': 'NestedMessage',
  '2': const [
    const {'1': 'd', '3': 1, '4': 1, '5': 5, '10': 'd'},
  ],
};

/// Descriptor for `NestedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nestedMessageDescriptor =
    $convert.base64Decode('Cg1OZXN0ZWRNZXNzYWdlEgwKAWQYASABKAVSAWQ=');
@$core.Deprecated('Use arenaMessageDescriptor instead')
const ArenaMessage$json = const {
  '1': 'ArenaMessage',
  '2': const [
    const {
      '1': 'repeated_nested_message',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto2_arena_unittest.NestedMessage',
      '10': 'repeatedNestedMessage'
    },
  ],
};

/// Descriptor for `ArenaMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arenaMessageDescriptor = $convert.base64Decode(
    'CgxBcmVuYU1lc3NhZ2USXAoXcmVwZWF0ZWRfbmVzdGVkX21lc3NhZ2UYASADKAsyJC5wcm90bzJfYXJlbmFfdW5pdHRlc3QuTmVzdGVkTWVzc2FnZVIVcmVwZWF0ZWROZXN0ZWRNZXNzYWdl');
