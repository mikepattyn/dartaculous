///
//  Generated code. Do not modify.
//  source: bulk_write.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use bulkWriteRequestDescriptor instead')
const BulkWriteRequest$json = const {
  '1': 'BulkWriteRequest',
  '2': const [
    const {'1': 'collectionOid', '3': 1, '4': 1, '5': 12, '10': 'collectionOid'},
    const {'1': 'context', '3': 2, '4': 1, '5': 11, '6': '.RequestContext', '10': 'context'},
    const {'1': 'writeModels', '3': 3, '4': 3, '5': 11, '6': '.WriteModel', '10': 'writeModels'},
    const {'1': 'options', '3': 5, '4': 1, '5': 11, '6': '.BulkWriteOptions', '9': 0, '10': 'options'},
  ],
  '8': const [
    const {'1': 'opts'},
  ],
};

/// Descriptor for `BulkWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkWriteRequestDescriptor = $convert.base64Decode('ChBCdWxrV3JpdGVSZXF1ZXN0EiQKDWNvbGxlY3Rpb25PaWQYASABKAxSDWNvbGxlY3Rpb25PaWQSKQoHY29udGV4dBgCIAEoCzIPLlJlcXVlc3RDb250ZXh0Ugdjb250ZXh0Ei0KC3dyaXRlTW9kZWxzGAMgAygLMgsuV3JpdGVNb2RlbFILd3JpdGVNb2RlbHMSLQoHb3B0aW9ucxgFIAEoCzIRLkJ1bGtXcml0ZU9wdGlvbnNIAFIHb3B0aW9uc0IGCgRvcHRz');
@$core.Deprecated('Use bulkWriteOptionsDescriptor instead')
const BulkWriteOptions$json = const {
  '1': 'BulkWriteOptions',
  '2': const [
    const {'1': 'bypass_document_validation', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'bypassDocumentValidation'},
    const {'1': 'comment', '3': 2, '4': 1, '5': 12, '10': 'comment'},
    const {'1': 'ordered', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'ordered'},
    const {'1': 'let', '3': 4, '4': 1, '5': 12, '10': 'let'},
  ],
};

/// Descriptor for `BulkWriteOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkWriteOptionsDescriptor = $convert.base64Decode('ChBCdWxrV3JpdGVPcHRpb25zElgKGmJ5cGFzc19kb2N1bWVudF92YWxpZGF0aW9uGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVIYYnlwYXNzRG9jdW1lbnRWYWxpZGF0aW9uEhgKB2NvbW1lbnQYAiABKAxSB2NvbW1lbnQSNAoHb3JkZXJlZBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSB29yZGVyZWQSEAoDbGV0GAQgASgMUgNsZXQ=');
@$core.Deprecated('Use writeModelDescriptor instead')
const WriteModel$json = const {
  '1': 'WriteModel',
  '2': const [
    const {'1': 'insertOneModel', '3': 1, '4': 1, '5': 11, '6': '.InsertOneModel', '9': 0, '10': 'insertOneModel'},
    const {'1': 'deleteOneModel', '3': 2, '4': 1, '5': 11, '6': '.DeleteOneModel', '9': 0, '10': 'deleteOneModel'},
    const {'1': 'replaceOneModel', '3': 3, '4': 1, '5': 11, '6': '.ReplaceOneModel', '9': 0, '10': 'replaceOneModel'},
    const {'1': 'updateOneModel', '3': 4, '4': 1, '5': 11, '6': '.UpdateOneModel', '9': 0, '10': 'updateOneModel'},
    const {'1': 'deleteManyModel', '3': 5, '4': 1, '5': 11, '6': '.DeleteManyModel', '9': 0, '10': 'deleteManyModel'},
    const {'1': 'updateManyModel', '3': 6, '4': 1, '5': 11, '6': '.UpdateManyModel', '9': 0, '10': 'updateManyModel'},
  ],
  '8': const [
    const {'1': 'ops'},
  ],
};

/// Descriptor for `WriteModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeModelDescriptor = $convert.base64Decode('CgpXcml0ZU1vZGVsEjkKDmluc2VydE9uZU1vZGVsGAEgASgLMg8uSW5zZXJ0T25lTW9kZWxIAFIOaW5zZXJ0T25lTW9kZWwSOQoOZGVsZXRlT25lTW9kZWwYAiABKAsyDy5EZWxldGVPbmVNb2RlbEgAUg5kZWxldGVPbmVNb2RlbBI8Cg9yZXBsYWNlT25lTW9kZWwYAyABKAsyEC5SZXBsYWNlT25lTW9kZWxIAFIPcmVwbGFjZU9uZU1vZGVsEjkKDnVwZGF0ZU9uZU1vZGVsGAQgASgLMg8uVXBkYXRlT25lTW9kZWxIAFIOdXBkYXRlT25lTW9kZWwSPAoPZGVsZXRlTWFueU1vZGVsGAUgASgLMhAuRGVsZXRlTWFueU1vZGVsSABSD2RlbGV0ZU1hbnlNb2RlbBI8Cg91cGRhdGVNYW55TW9kZWwYBiABKAsyEC5VcGRhdGVNYW55TW9kZWxIAFIPdXBkYXRlTWFueU1vZGVsQgUKA29wcw==');
@$core.Deprecated('Use insertOneModelDescriptor instead')
const InsertOneModel$json = const {
  '1': 'InsertOneModel',
  '2': const [
    const {'1': 'document', '3': 1, '4': 1, '5': 12, '10': 'document'},
  ],
};

/// Descriptor for `InsertOneModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertOneModelDescriptor = $convert.base64Decode('Cg5JbnNlcnRPbmVNb2RlbBIaCghkb2N1bWVudBgBIAEoDFIIZG9jdW1lbnQ=');
@$core.Deprecated('Use deleteOneModelDescriptor instead')
const DeleteOneModel$json = const {
  '1': 'DeleteOneModel',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'hint', '3': 2, '4': 1, '5': 12, '10': 'hint'},
  ],
};

/// Descriptor for `DeleteOneModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOneModelDescriptor = $convert.base64Decode('Cg5EZWxldGVPbmVNb2RlbBIWCgZmaWx0ZXIYASABKAxSBmZpbHRlchISCgRoaW50GAIgASgMUgRoaW50');
@$core.Deprecated('Use deleteManyModelDescriptor instead')
const DeleteManyModel$json = const {
  '1': 'DeleteManyModel',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'hint', '3': 2, '4': 1, '5': 12, '10': 'hint'},
  ],
};

/// Descriptor for `DeleteManyModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteManyModelDescriptor = $convert.base64Decode('Cg9EZWxldGVNYW55TW9kZWwSFgoGZmlsdGVyGAEgASgMUgZmaWx0ZXISEgoEaGludBgCIAEoDFIEaGludA==');
@$core.Deprecated('Use replaceOneModelDescriptor instead')
const ReplaceOneModel$json = const {
  '1': 'ReplaceOneModel',
  '2': const [
    const {'1': 'upsert', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'upsert'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'replacement', '3': 3, '4': 1, '5': 12, '10': 'replacement'},
    const {'1': 'hint', '3': 4, '4': 1, '5': 12, '10': 'hint'},
  ],
};

/// Descriptor for `ReplaceOneModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replaceOneModelDescriptor = $convert.base64Decode('Cg9SZXBsYWNlT25lTW9kZWwSMgoGdXBzZXJ0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVIGdXBzZXJ0EhYKBmZpbHRlchgCIAEoDFIGZmlsdGVyEiAKC3JlcGxhY2VtZW50GAMgASgMUgtyZXBsYWNlbWVudBISCgRoaW50GAQgASgMUgRoaW50');
@$core.Deprecated('Use updateOneModelDescriptor instead')
const UpdateOneModel$json = const {
  '1': 'UpdateOneModel',
  '2': const [
    const {'1': 'upsert', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'upsert'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'update', '3': 3, '4': 1, '5': 12, '10': 'update'},
    const {'1': 'hint', '3': 4, '4': 1, '5': 12, '10': 'hint'},
  ],
};

/// Descriptor for `UpdateOneModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOneModelDescriptor = $convert.base64Decode('Cg5VcGRhdGVPbmVNb2RlbBIyCgZ1cHNlcnQYASABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUgZ1cHNlcnQSFgoGZmlsdGVyGAIgASgMUgZmaWx0ZXISFgoGdXBkYXRlGAMgASgMUgZ1cGRhdGUSEgoEaGludBgEIAEoDFIEaGludA==');
@$core.Deprecated('Use updateManyModelDescriptor instead')
const UpdateManyModel$json = const {
  '1': 'UpdateManyModel',
  '2': const [
    const {'1': 'upsert', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'upsert'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'update', '3': 3, '4': 1, '5': 12, '10': 'update'},
    const {'1': 'hint', '3': 4, '4': 1, '5': 12, '10': 'hint'},
  ],
};

/// Descriptor for `UpdateManyModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateManyModelDescriptor = $convert.base64Decode('Cg9VcGRhdGVNYW55TW9kZWwSMgoGdXBzZXJ0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVIGdXBzZXJ0EhYKBmZpbHRlchgCIAEoDFIGZmlsdGVyEhYKBnVwZGF0ZRgDIAEoDFIGdXBkYXRlEhIKBGhpbnQYBCABKAxSBGhpbnQ=');
@$core.Deprecated('Use bulkWriteResultDescriptor instead')
const BulkWriteResult$json = const {
  '1': 'BulkWriteResult',
  '2': const [
    const {'1': 'inserted_count', '3': 1, '4': 1, '5': 3, '10': 'insertedCount'},
    const {'1': 'matched_count', '3': 2, '4': 1, '5': 3, '10': 'matchedCount'},
    const {'1': 'modified_count', '3': 3, '4': 1, '5': 3, '10': 'modifiedCount'},
    const {'1': 'deleted_count', '3': 4, '4': 1, '5': 3, '10': 'deletedCount'},
    const {'1': 'upserted_count', '3': 5, '4': 1, '5': 3, '10': 'upsertedCount'},
    const {'1': 'upserted_ids', '3': 6, '4': 3, '5': 11, '6': '.BulkWriteResult.UpsertedIdsEntry', '10': 'upsertedIds'},
  ],
  '3': const [BulkWriteResult_UpsertedIdsEntry$json],
};

@$core.Deprecated('Use bulkWriteResultDescriptor instead')
const BulkWriteResult_UpsertedIdsEntry$json = const {
  '1': 'UpsertedIdsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BulkWriteResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkWriteResultDescriptor = $convert.base64Decode('Cg9CdWxrV3JpdGVSZXN1bHQSJQoOaW5zZXJ0ZWRfY291bnQYASABKANSDWluc2VydGVkQ291bnQSIwoNbWF0Y2hlZF9jb3VudBgCIAEoA1IMbWF0Y2hlZENvdW50EiUKDm1vZGlmaWVkX2NvdW50GAMgASgDUg1tb2RpZmllZENvdW50EiMKDWRlbGV0ZWRfY291bnQYBCABKANSDGRlbGV0ZWRDb3VudBIlCg51cHNlcnRlZF9jb3VudBgFIAEoA1INdXBzZXJ0ZWRDb3VudBJECgx1cHNlcnRlZF9pZHMYBiADKAsyIS5CdWxrV3JpdGVSZXN1bHQuVXBzZXJ0ZWRJZHNFbnRyeVILdXBzZXJ0ZWRJZHMaPgoQVXBzZXJ0ZWRJZHNFbnRyeRIQCgNrZXkYASABKANSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgB');
