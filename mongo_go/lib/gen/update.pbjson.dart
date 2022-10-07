///
//  Generated code. Do not modify.
//  source: update.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = const {
  '1': 'UpdateRequest',
  '2': const [
    const {
      '1': 'collectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'collectionOid'
    },
    const {
      '1': 'context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.RequestContext',
      '10': 'context'
    },
    const {'1': 'filter', '3': 3, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'update', '3': 4, '4': 1, '5': 12, '10': 'update'},
    const {'1': 'isUpsert', '3': 5, '4': 1, '5': 8, '10': 'isUpsert'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0EiQKDWNvbGxlY3Rpb25PaWQYASABKAxSDWNvbGxlY3Rpb25PaWQSKQoHY29udGV4dBgCIAEoCzIPLlJlcXVlc3RDb250ZXh0Ugdjb250ZXh0EhYKBmZpbHRlchgDIAEoDFIGZmlsdGVyEhYKBnVwZGF0ZRgEIAEoDFIGdXBkYXRlEhoKCGlzVXBzZXJ0GAUgASgIUghpc1Vwc2VydA==');
@$core.Deprecated('Use updateResultDescriptor instead')
const UpdateResult$json = const {
  '1': 'UpdateResult',
  '2': const [
    const {'1': 'matched_count', '3': 1, '4': 1, '5': 3, '10': 'matchedCount'},
    const {
      '1': 'modified_count',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'modifiedCount'
    },
    const {
      '1': 'upserted_count',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'upsertedCount'
    },
    const {'1': 'upserted_id', '3': 4, '4': 1, '5': 12, '10': 'upsertedId'},
  ],
};

/// Descriptor for `UpdateResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResultDescriptor = $convert.base64Decode(
    'CgxVcGRhdGVSZXN1bHQSIwoNbWF0Y2hlZF9jb3VudBgBIAEoA1IMbWF0Y2hlZENvdW50EiUKDm1vZGlmaWVkX2NvdW50GAIgASgDUg1tb2RpZmllZENvdW50EiUKDnVwc2VydGVkX2NvdW50GAMgASgDUg11cHNlcnRlZENvdW50Eh8KC3Vwc2VydGVkX2lkGAQgASgMUgp1cHNlcnRlZElk');
