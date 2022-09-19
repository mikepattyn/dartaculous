///
//  Generated code. Do not modify.
//  source: disconnect_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DisconnectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DisconnectRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionOid', $pb.PbFieldType.OY, protoName: 'connectionOid')
    ..hasRequiredFields = false
  ;

  DisconnectRequest._() : super();
  factory DisconnectRequest({
    $core.List<$core.int>? connectionOid,
  }) {
    final _result = create();
    if (connectionOid != null) {
      _result.connectionOid = connectionOid;
    }
    return _result;
  }
  factory DisconnectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectRequest clone() => DisconnectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectRequest copyWith(void Function(DisconnectRequest) updates) => super.copyWith((message) => updates(message as DisconnectRequest)) as DisconnectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisconnectRequest create() => DisconnectRequest._();
  DisconnectRequest createEmptyInstance() => create();
  static $pb.PbList<DisconnectRequest> createRepeated() => $pb.PbList<DisconnectRequest>();
  @$core.pragma('dart2js:noInline')
  static DisconnectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectRequest>(create);
  static DisconnectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get connectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set connectionOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionOid() => clearField(1);
}

