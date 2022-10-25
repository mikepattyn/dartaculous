///
//  Generated code. Do not modify.
//  source: insert_many.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class InsertManyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InsertManyRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sessionOid',
        $pb.PbFieldType.OY,
        protoName: 'sessionOid')
    ..p<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documents',
        $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  InsertManyRequest._() : super();
  factory InsertManyRequest({
    $core.List<$core.int>? collectionOid,
    $core.List<$core.int>? sessionOid,
    $core.Iterable<$core.List<$core.int>>? documents,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (sessionOid != null) {
      _result.sessionOid = sessionOid;
    }
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    return _result;
  }
  factory InsertManyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertManyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertManyRequest clone() => InsertManyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertManyRequest copyWith(void Function(InsertManyRequest) updates) =>
      super.copyWith((message) => updates(message as InsertManyRequest))
          as InsertManyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InsertManyRequest create() => InsertManyRequest._();
  InsertManyRequest createEmptyInstance() => create();
  static $pb.PbList<InsertManyRequest> createRepeated() =>
      $pb.PbList<InsertManyRequest>();
  @$core.pragma('dart2js:noInline')
  static InsertManyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertManyRequest>(create);
  static InsertManyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get sessionOid => $_getN(1);
  @$pb.TagNumber(2)
  set sessionOid($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSessionOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get documents => $_getList(2);
}

class InsertManyResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InsertManyResult',
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'insertedIds',
        $pb.PbFieldType.PY,
        protoName: 'insertedIds')
    ..hasRequiredFields = false;

  InsertManyResult._() : super();
  factory InsertManyResult({
    $core.Iterable<$core.List<$core.int>>? insertedIds,
  }) {
    final _result = create();
    if (insertedIds != null) {
      _result.insertedIds.addAll(insertedIds);
    }
    return _result;
  }
  factory InsertManyResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertManyResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertManyResult clone() => InsertManyResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertManyResult copyWith(void Function(InsertManyResult) updates) =>
      super.copyWith((message) => updates(message as InsertManyResult))
          as InsertManyResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InsertManyResult create() => InsertManyResult._();
  InsertManyResult createEmptyInstance() => create();
  static $pb.PbList<InsertManyResult> createRepeated() =>
      $pb.PbList<InsertManyResult>();
  @$core.pragma('dart2js:noInline')
  static InsertManyResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertManyResult>(create);
  static InsertManyResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get insertedIds => $_getList(0);
}
