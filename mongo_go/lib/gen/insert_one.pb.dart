///
//  Generated code. Do not modify.
//  source: insert_one.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'request_context.pb.dart' as $24;

class InsertOneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InsertOneRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..aOM<$24.RequestContext>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'context',
        subBuilder: $24.RequestContext.create)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  InsertOneRequest._() : super();
  factory InsertOneRequest({
    $core.List<$core.int>? collectionOid,
    $24.RequestContext? context,
    $core.List<$core.int>? document,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (context != null) {
      _result.context = context;
    }
    if (document != null) {
      _result.document = document;
    }
    return _result;
  }
  factory InsertOneRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertOneRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertOneRequest clone() => InsertOneRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertOneRequest copyWith(void Function(InsertOneRequest) updates) =>
      super.copyWith((message) => updates(message as InsertOneRequest))
          as InsertOneRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InsertOneRequest create() => InsertOneRequest._();
  InsertOneRequest createEmptyInstance() => create();
  static $pb.PbList<InsertOneRequest> createRepeated() =>
      $pb.PbList<InsertOneRequest>();
  @$core.pragma('dart2js:noInline')
  static InsertOneRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertOneRequest>(create);
  static InsertOneRequest? _defaultInstance;

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
  $24.RequestContext get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($24.RequestContext v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  $24.RequestContext ensureContext() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get document => $_getN(2);
  @$pb.TagNumber(3)
  set document($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDocument() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocument() => clearField(3);
}

class InsertOneResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InsertOneResult',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'insertedId',
        $pb.PbFieldType.OY,
        protoName: 'insertedId')
    ..hasRequiredFields = false;

  InsertOneResult._() : super();
  factory InsertOneResult({
    $core.List<$core.int>? insertedId,
  }) {
    final _result = create();
    if (insertedId != null) {
      _result.insertedId = insertedId;
    }
    return _result;
  }
  factory InsertOneResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertOneResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertOneResult clone() => InsertOneResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertOneResult copyWith(void Function(InsertOneResult) updates) =>
      super.copyWith((message) => updates(message as InsertOneResult))
          as InsertOneResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InsertOneResult create() => InsertOneResult._();
  InsertOneResult createEmptyInstance() => create();
  static $pb.PbList<InsertOneResult> createRepeated() =>
      $pb.PbList<InsertOneResult>();
  @$core.pragma('dart2js:noInline')
  static InsertOneResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertOneResult>(create);
  static InsertOneResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get insertedId => $_getN(0);
  @$pb.TagNumber(1)
  set insertedId($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInsertedId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInsertedId() => clearField(1);
}
