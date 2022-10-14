///
//  Generated code. Do not modify.
//  source: index_requests.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use collationDescriptor instead')
const Collation$json = const {
  '1': 'Collation',
  '2': const [
    const {'1': 'Locale', '3': 1, '4': 1, '5': 9, '10': 'Locale'},
    const {'1': 'CaseLevel', '3': 2, '4': 1, '5': 8, '10': 'CaseLevel'},
    const {'1': 'CaseFirst', '3': 3, '4': 1, '5': 9, '10': 'CaseFirst'},
    const {'1': 'Strength', '3': 4, '4': 1, '5': 5, '10': 'Strength'},
    const {
      '1': 'NumericOrdering',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'NumericOrdering'
    },
    const {'1': 'Alternate', '3': 6, '4': 1, '5': 9, '10': 'Alternate'},
    const {'1': 'MaxVariable', '3': 7, '4': 1, '5': 9, '10': 'MaxVariable'},
    const {'1': 'Normalization', '3': 8, '4': 1, '5': 8, '10': 'Normalization'},
    const {'1': 'Backwards', '3': 9, '4': 1, '5': 8, '10': 'Backwards'},
  ],
};

/// Descriptor for `Collation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collationDescriptor = $convert.base64Decode(
    'CglDb2xsYXRpb24SFgoGTG9jYWxlGAEgASgJUgZMb2NhbGUSHAoJQ2FzZUxldmVsGAIgASgIUglDYXNlTGV2ZWwSHAoJQ2FzZUZpcnN0GAMgASgJUglDYXNlRmlyc3QSGgoIU3RyZW5ndGgYBCABKAVSCFN0cmVuZ3RoEigKD051bWVyaWNPcmRlcmluZxgFIAEoCFIPTnVtZXJpY09yZGVyaW5nEhwKCUFsdGVybmF0ZRgGIAEoCVIJQWx0ZXJuYXRlEiAKC01heFZhcmlhYmxlGAcgASgJUgtNYXhWYXJpYWJsZRIkCg1Ob3JtYWxpemF0aW9uGAggASgIUg1Ob3JtYWxpemF0aW9uEhwKCUJhY2t3YXJkcxgJIAEoCFIJQmFja3dhcmRz');
@$core.Deprecated('Use indexOptionsDescriptor instead')
const IndexOptions$json = const {
  '1': 'IndexOptions',
  '2': const [
    const {
      '1': 'background',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'background'
    },
    const {
      '1': 'expireAfterSeconds',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'expireAfterSeconds'
    },
    const {
      '1': 'name',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'name'
    },
    const {
      '1': 'sparse',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'sparse'
    },
    const {
      '1': 'storageEngine',
      '3': 5,
      '4': 1,
      '5': 12,
      '10': 'storageEngine'
    },
    const {
      '1': 'unique',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'unique'
    },
    const {
      '1': 'version',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'version'
    },
    const {
      '1': 'defaultLanguage',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'defaultLanguage'
    },
    const {
      '1': 'languageOverride',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'languageOverride'
    },
    const {
      '1': 'textVersion',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'textVersion'
    },
    const {'1': 'weights', '3': 11, '4': 1, '5': 12, '10': 'weights'},
    const {
      '1': 'sphereVersion',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'sphereVersion'
    },
    const {
      '1': 'bits',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'bits'
    },
    const {
      '1': 'max',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.DoubleValue',
      '10': 'max'
    },
    const {
      '1': 'min',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.DoubleValue',
      '10': 'min'
    },
    const {
      '1': 'bucketSize',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'bucketSize'
    },
    const {
      '1': 'partialFilterExpression',
      '3': 17,
      '4': 1,
      '5': 12,
      '10': 'partialFilterExpression'
    },
    const {'1': 'collation', '3': 18, '4': 1, '5': 12, '10': 'collation'},
    const {
      '1': 'wildcardProjection',
      '3': 19,
      '4': 1,
      '5': 12,
      '10': 'wildcardProjection'
    },
    const {
      '1': 'hidden',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'hidden'
    },
  ],
};

/// Descriptor for `IndexOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexOptionsDescriptor = $convert.base64Decode(
    'CgxJbmRleE9wdGlvbnMSOgoKYmFja2dyb3VuZBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSCmJhY2tncm91bmQSSwoSZXhwaXJlQWZ0ZXJTZWNvbmRzGAIgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSEmV4cGlyZUFmdGVyU2Vjb25kcxIwCgRuYW1lGAMgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1ZhbHVlUgRuYW1lEjIKBnNwYXJzZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSBnNwYXJzZRIkCg1zdG9yYWdlRW5naW5lGAUgASgMUg1zdG9yYWdlRW5naW5lEjIKBnVuaXF1ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSBnVuaXF1ZRI1Cgd2ZXJzaW9uGAcgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSB3ZlcnNpb24SRgoPZGVmYXVsdExhbmd1YWdlGAggASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1ZhbHVlUg9kZWZhdWx0TGFuZ3VhZ2USSAoQbGFuZ3VhZ2VPdmVycmlkZRgJIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZVIQbGFuZ3VhZ2VPdmVycmlkZRI9Cgt0ZXh0VmVyc2lvbhgKIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5JbnQzMlZhbHVlUgt0ZXh0VmVyc2lvbhIYCgd3ZWlnaHRzGAsgASgMUgd3ZWlnaHRzEkEKDXNwaGVyZVZlcnNpb24YDCABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVINc3BoZXJlVmVyc2lvbhIvCgRiaXRzGA0gASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSBGJpdHMSLgoDbWF4GA4gASgLMhwuZ29vZ2xlLnByb3RvYnVmLkRvdWJsZVZhbHVlUgNtYXgSLgoDbWluGA8gASgLMhwuZ29vZ2xlLnByb3RvYnVmLkRvdWJsZVZhbHVlUgNtaW4SOwoKYnVja2V0U2l6ZRgQIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5JbnQzMlZhbHVlUgpidWNrZXRTaXplEjgKF3BhcnRpYWxGaWx0ZXJFeHByZXNzaW9uGBEgASgMUhdwYXJ0aWFsRmlsdGVyRXhwcmVzc2lvbhIcCgljb2xsYXRpb24YEiABKAxSCWNvbGxhdGlvbhIuChJ3aWxkY2FyZFByb2plY3Rpb24YEyABKAxSEndpbGRjYXJkUHJvamVjdGlvbhIyCgZoaWRkZW4YFCABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUgZoaWRkZW4=');
@$core.Deprecated('Use createIndexRequestDescriptor instead')
const CreateIndexRequest$json = const {
  '1': 'CreateIndexRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
    const {'1': 'keys', '3': 2, '4': 1, '5': 12, '10': 'keys'},
    const {'1': 'indexOptions', '3': 3, '4': 1, '5': 12, '10': 'indexOptions'},
  ],
};

/// Descriptor for `CreateIndexRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createIndexRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVJbmRleFJlcXVlc3QSJAoNY29sbGVjdGlvbk9pZBgBIAEoDFINY29sbGVjdGlvbk9pZBISCgRrZXlzGAIgASgMUgRrZXlzEiIKDGluZGV4T3B0aW9ucxgDIAEoDFIMaW5kZXhPcHRpb25z');
@$core.Deprecated('Use dropIndexRequestDescriptor instead')
const DropIndexRequest$json = const {
  '1': 'DropIndexRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DropIndexRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropIndexRequestDescriptor = $convert.base64Decode(
    'ChBEcm9wSW5kZXhSZXF1ZXN0EiQKDWNvbGxlY3Rpb25PaWQYASABKAxSDWNvbGxlY3Rpb25PaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use dropAllIndexesRequestDescriptor instead')
const DropAllIndexesRequest$json = const {
  '1': 'DropAllIndexesRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
  ],
};

/// Descriptor for `DropAllIndexesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropAllIndexesRequestDescriptor = $convert.base64Decode(
    'ChVEcm9wQWxsSW5kZXhlc1JlcXVlc3QSJAoNY29sbGVjdGlvbk9pZBgBIAEoDFINY29sbGVjdGlvbk9pZA==');
@$core.Deprecated('Use listIndexesRequestDescriptor instead')
const ListIndexesRequest$json = const {
  '1': 'ListIndexesRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
  ],
};

/// Descriptor for `ListIndexesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listIndexesRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0SW5kZXhlc1JlcXVlc3QSJAoNY29sbGVjdGlvbk9pZBgBIAEoDFINY29sbGVjdGlvbk9pZA==');
