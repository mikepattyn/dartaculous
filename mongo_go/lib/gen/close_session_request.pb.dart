///
//  Generated code. Do not modify.
//  source: close_session_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CloseSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CloseSessionRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionOid', $pb.PbFieldType.OY, protoName: 'connectionOid')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionOid', $pb.PbFieldType.OY, protoName: 'sessionOid')
    ..hasRequiredFields = false
  ;

  CloseSessionRequest._() : super();
  factory CloseSessionRequest({
    $core.List<$core.int>? connectionOid,
    $core.List<$core.int>? sessionOid,
  }) {
    final _result = create();
    if (connectionOid != null) {
      _result.connectionOid = connectionOid;
    }
    if (sessionOid != null) {
      _result.sessionOid = sessionOid;
    }
    return _result;
  }
  factory CloseSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CloseSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CloseSessionRequest clone() => CloseSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CloseSessionRequest copyWith(void Function(CloseSessionRequest) updates) => super.copyWith((message) => updates(message as CloseSessionRequest)) as CloseSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseSessionRequest create() => CloseSessionRequest._();
  CloseSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CloseSessionRequest> createRepeated() => $pb.PbList<CloseSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CloseSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CloseSessionRequest>(create);
  static CloseSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get connectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set connectionOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get sessionOid => $_getN(1);
  @$pb.TagNumber(2)
  set sessionOid($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionOid() => clearField(2);
}

