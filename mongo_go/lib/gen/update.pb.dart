///
//  Generated code. Do not modify.
//  source: update.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'request_context.pb.dart' as $24;

class UpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionOid', $pb.PbFieldType.OY, protoName: 'collectionOid')
    ..aOM<$24.RequestContext>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'context', subBuilder: $24.RequestContext.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'update', $pb.PbFieldType.OY)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isUpsert', protoName: 'isUpsert')
    ..hasRequiredFields = false
  ;

  UpdateRequest._() : super();
  factory UpdateRequest({
    $core.List<$core.int>? collectionOid,
    $24.RequestContext? context,
    $core.List<$core.int>? filter,
    $core.List<$core.int>? update,
    $core.bool? isUpsert,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (context != null) {
      _result.context = context;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (update != null) {
      _result.update = update;
    }
    if (isUpsert != null) {
      _result.isUpsert = isUpsert;
    }
    return _result;
  }
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $24.RequestContext get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($24.RequestContext v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  $24.RequestContext ensureContext() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get filter => $_getN(2);
  @$pb.TagNumber(3)
  set filter($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilter() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilter() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get update => $_getN(3);
  @$pb.TagNumber(4)
  set update($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdate() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isUpsert => $_getBF(4);
  @$pb.TagNumber(5)
  set isUpsert($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsUpsert() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsUpsert() => clearField(5);
}

class UpdateResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateResult', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matchedCount')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modifiedCount')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upsertedCount')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upsertedId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UpdateResult._() : super();
  factory UpdateResult({
    $fixnum.Int64? matchedCount,
    $fixnum.Int64? modifiedCount,
    $fixnum.Int64? upsertedCount,
    $core.List<$core.int>? upsertedId,
  }) {
    final _result = create();
    if (matchedCount != null) {
      _result.matchedCount = matchedCount;
    }
    if (modifiedCount != null) {
      _result.modifiedCount = modifiedCount;
    }
    if (upsertedCount != null) {
      _result.upsertedCount = upsertedCount;
    }
    if (upsertedId != null) {
      _result.upsertedId = upsertedId;
    }
    return _result;
  }
  factory UpdateResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResult clone() => UpdateResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResult copyWith(void Function(UpdateResult) updates) => super.copyWith((message) => updates(message as UpdateResult)) as UpdateResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateResult create() => UpdateResult._();
  UpdateResult createEmptyInstance() => create();
  static $pb.PbList<UpdateResult> createRepeated() => $pb.PbList<UpdateResult>();
  @$core.pragma('dart2js:noInline')
  static UpdateResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResult>(create);
  static UpdateResult? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get matchedCount => $_getI64(0);
  @$pb.TagNumber(1)
  set matchedCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMatchedCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearMatchedCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get modifiedCount => $_getI64(1);
  @$pb.TagNumber(2)
  set modifiedCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModifiedCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearModifiedCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get upsertedCount => $_getI64(2);
  @$pb.TagNumber(3)
  set upsertedCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpsertedCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpsertedCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get upsertedId => $_getN(3);
  @$pb.TagNumber(4)
  set upsertedId($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpsertedId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpsertedId() => clearField(4);
}

