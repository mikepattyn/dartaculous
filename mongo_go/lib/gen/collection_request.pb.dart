///
//  Generated code. Do not modify.
//  source: collection_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CollectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CollectionRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'databaseOid', $pb.PbFieldType.OY, protoName: 'databaseOid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionName', protoName: 'collectionName')
    ..hasRequiredFields = false
  ;

  CollectionRequest._() : super();
  factory CollectionRequest({
    $core.List<$core.int>? databaseOid,
    $core.String? collectionName,
  }) {
    final _result = create();
    if (databaseOid != null) {
      _result.databaseOid = databaseOid;
    }
    if (collectionName != null) {
      _result.collectionName = collectionName;
    }
    return _result;
  }
  factory CollectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionRequest clone() => CollectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionRequest copyWith(void Function(CollectionRequest) updates) => super.copyWith((message) => updates(message as CollectionRequest)) as CollectionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionRequest create() => CollectionRequest._();
  CollectionRequest createEmptyInstance() => create();
  static $pb.PbList<CollectionRequest> createRepeated() => $pb.PbList<CollectionRequest>();
  @$core.pragma('dart2js:noInline')
  static CollectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionRequest>(create);
  static CollectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get databaseOid => $_getN(0);
  @$pb.TagNumber(1)
  set databaseOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDatabaseOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabaseOid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collectionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionName() => clearField(2);
}

