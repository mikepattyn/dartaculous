///
//  Generated code. Do not modify.
//  source: aggregate_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AggregateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AggregateRequest',
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
            : 'pipeline',
        $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  AggregateRequest._() : super();
  factory AggregateRequest({
    $core.List<$core.int>? collectionOid,
    $core.List<$core.int>? sessionOid,
    $core.Iterable<$core.List<$core.int>>? pipeline,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (sessionOid != null) {
      _result.sessionOid = sessionOid;
    }
    if (pipeline != null) {
      _result.pipeline.addAll(pipeline);
    }
    return _result;
  }
  factory AggregateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AggregateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AggregateRequest clone() => AggregateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AggregateRequest copyWith(void Function(AggregateRequest) updates) =>
      super.copyWith((message) => updates(message as AggregateRequest))
          as AggregateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AggregateRequest create() => AggregateRequest._();
  AggregateRequest createEmptyInstance() => create();
  static $pb.PbList<AggregateRequest> createRepeated() =>
      $pb.PbList<AggregateRequest>();
  @$core.pragma('dart2js:noInline')
  static AggregateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AggregateRequest>(create);
  static AggregateRequest? _defaultInstance;

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
  $core.List<$core.List<$core.int>> get pipeline => $_getList(2);
}
