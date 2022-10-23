///
//  Generated code. Do not modify.
//  source: find_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'request_context.pb.dart' as $5;

class FindRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FindRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..aOM<$5.RequestContext>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'context',
        subBuilder: $5.RequestContext.create)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  FindRequest._() : super();
  factory FindRequest({
    $core.List<$core.int>? collectionOid,
    $5.RequestContext? context,
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
  factory FindRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FindRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FindRequest clone() => FindRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FindRequest copyWith(void Function(FindRequest) updates) =>
      super.copyWith((message) => updates(message as FindRequest))
          as FindRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindRequest create() => FindRequest._();
  FindRequest createEmptyInstance() => create();
  static $pb.PbList<FindRequest> createRepeated() => $pb.PbList<FindRequest>();
  @$core.pragma('dart2js:noInline')
  static FindRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FindRequest>(create);
  static FindRequest? _defaultInstance;

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
  $5.RequestContext get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($5.RequestContext v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  $5.RequestContext ensureContext() => $_ensure(1);

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
