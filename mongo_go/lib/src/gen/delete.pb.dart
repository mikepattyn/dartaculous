///
//  Generated code. Do not modify.
//  source: delete.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'request_context.pb.dart' as $24;

class DeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteRequest',
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

  DeleteRequest._() : super();
  factory DeleteRequest({
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
  factory DeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteRequest clone() => DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteRequest copyWith(void Function(DeleteRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteRequest))
          as DeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRequest create() => DeleteRequest._();
  DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRequest> createRepeated() =>
      $pb.PbList<DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRequest>(create);
  static DeleteRequest? _defaultInstance;

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

class DeleteResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteResult',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deletedCount',
        protoName: 'deletedCount')
    ..hasRequiredFields = false;

  DeleteResult._() : super();
  factory DeleteResult({
    $fixnum.Int64? deletedCount,
  }) {
    final _result = create();
    if (deletedCount != null) {
      _result.deletedCount = deletedCount;
    }
    return _result;
  }
  factory DeleteResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteResult clone() => DeleteResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteResult copyWith(void Function(DeleteResult) updates) =>
      super.copyWith((message) => updates(message as DeleteResult))
          as DeleteResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteResult create() => DeleteResult._();
  DeleteResult createEmptyInstance() => create();
  static $pb.PbList<DeleteResult> createRepeated() =>
      $pb.PbList<DeleteResult>();
  @$core.pragma('dart2js:noInline')
  static DeleteResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteResult>(create);
  static DeleteResult? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get deletedCount => $_getI64(0);
  @$pb.TagNumber(1)
  set deletedCount($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDeletedCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeletedCount() => clearField(1);
}
