///
//  Generated code. Do not modify.
//  source: mongo_proxy/connection_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConnectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectionRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionString', protoName: 'connectionString')
    ..hasRequiredFields = false
  ;

  ConnectionRequest._() : super();
  factory ConnectionRequest({
    $core.String? connectionString,
  }) {
    final _result = create();
    if (connectionString != null) {
      _result.connectionString = connectionString;
    }
    return _result;
  }
  factory ConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionRequest clone() => ConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionRequest copyWith(void Function(ConnectionRequest) updates) => super.copyWith((message) => updates(message as ConnectionRequest)) as ConnectionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectionRequest create() => ConnectionRequest._();
  ConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectionRequest> createRepeated() => $pb.PbList<ConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionRequest>(create);
  static ConnectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get connectionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set connectionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionString() => clearField(1);
}

