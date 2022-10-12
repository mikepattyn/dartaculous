///
//  Generated code. Do not modify.
//  source: countDocuments.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'request_context.pb.dart' as $24;

class CountDocumentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CountDocumentsRequest',
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
            : 'filter',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  CountDocumentsRequest._() : super();
  factory CountDocumentsRequest({
    $core.List<$core.int>? collectionOid,
    $24.RequestContext? context,
    $core.List<$core.int>? filter,
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
    return _result;
  }
  factory CountDocumentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CountDocumentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CountDocumentsRequest clone() =>
      CountDocumentsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CountDocumentsRequest copyWith(
          void Function(CountDocumentsRequest) updates) =>
      super.copyWith((message) => updates(message as CountDocumentsRequest))
          as CountDocumentsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountDocumentsRequest create() => CountDocumentsRequest._();
  CountDocumentsRequest createEmptyInstance() => create();
  static $pb.PbList<CountDocumentsRequest> createRepeated() =>
      $pb.PbList<CountDocumentsRequest>();
  @$core.pragma('dart2js:noInline')
  static CountDocumentsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CountDocumentsRequest>(create);
  static CountDocumentsRequest? _defaultInstance;

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
  $core.List<$core.int> get filter => $_getN(2);
  @$pb.TagNumber(3)
  set filter($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFilter() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilter() => clearField(3);
}

class CountDocumentsResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CountDocumentsResult',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'cnt')
    ..hasRequiredFields = false;

  CountDocumentsResult._() : super();
  factory CountDocumentsResult({
    $fixnum.Int64? cnt,
  }) {
    final _result = create();
    if (cnt != null) {
      _result.cnt = cnt;
    }
    return _result;
  }
  factory CountDocumentsResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CountDocumentsResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CountDocumentsResult clone() =>
      CountDocumentsResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CountDocumentsResult copyWith(void Function(CountDocumentsResult) updates) =>
      super.copyWith((message) => updates(message as CountDocumentsResult))
          as CountDocumentsResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountDocumentsResult create() => CountDocumentsResult._();
  CountDocumentsResult createEmptyInstance() => create();
  static $pb.PbList<CountDocumentsResult> createRepeated() =>
      $pb.PbList<CountDocumentsResult>();
  @$core.pragma('dart2js:noInline')
  static CountDocumentsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CountDocumentsResult>(create);
  static CountDocumentsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cnt => $_getI64(0);
  @$pb.TagNumber(1)
  set cnt($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCnt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCnt() => clearField(1);
}
