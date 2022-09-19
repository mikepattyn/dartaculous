///
//  Generated code. Do not modify.
//  source: database_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DatabaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DatabaseRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionOid', $pb.PbFieldType.OY, protoName: 'connectionOid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'databaseName', protoName: 'databaseName')
    ..hasRequiredFields = false
  ;

  DatabaseRequest._() : super();
  factory DatabaseRequest({
    $core.List<$core.int>? connectionOid,
    $core.String? databaseName,
  }) {
    final _result = create();
    if (connectionOid != null) {
      _result.connectionOid = connectionOid;
    }
    if (databaseName != null) {
      _result.databaseName = databaseName;
    }
    return _result;
  }
  factory DatabaseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DatabaseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DatabaseRequest clone() => DatabaseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DatabaseRequest copyWith(void Function(DatabaseRequest) updates) => super.copyWith((message) => updates(message as DatabaseRequest)) as DatabaseRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DatabaseRequest create() => DatabaseRequest._();
  DatabaseRequest createEmptyInstance() => create();
  static $pb.PbList<DatabaseRequest> createRepeated() => $pb.PbList<DatabaseRequest>();
  @$core.pragma('dart2js:noInline')
  static DatabaseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DatabaseRequest>(create);
  static DatabaseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get connectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set connectionOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get databaseName => $_getSZ(1);
  @$pb.TagNumber(2)
  set databaseName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDatabaseName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDatabaseName() => clearField(2);
}

