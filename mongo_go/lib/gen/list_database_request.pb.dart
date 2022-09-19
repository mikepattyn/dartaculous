///
//  Generated code. Do not modify.
//  source: list_database_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $9;

class ListDatabasesRequest_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDatabasesRequest.Request', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', $pb.PbFieldType.OY)
    ..aOM<$9.BoolValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameOnly', protoName: 'nameOnly', subBuilder: $9.BoolValue.create)
    ..aOM<$9.BoolValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authorizedDatabases', protoName: 'authorizedDatabases', subBuilder: $9.BoolValue.create)
    ..hasRequiredFields = false
  ;

  ListDatabasesRequest_Request._() : super();
  factory ListDatabasesRequest_Request({
    $core.List<$core.int>? filter,
    $9.BoolValue? nameOnly,
    $9.BoolValue? authorizedDatabases,
  }) {
    final _result = create();
    if (filter != null) {
      _result.filter = filter;
    }
    if (nameOnly != null) {
      _result.nameOnly = nameOnly;
    }
    if (authorizedDatabases != null) {
      _result.authorizedDatabases = authorizedDatabases;
    }
    return _result;
  }
  factory ListDatabasesRequest_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDatabasesRequest_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDatabasesRequest_Request clone() => ListDatabasesRequest_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDatabasesRequest_Request copyWith(void Function(ListDatabasesRequest_Request) updates) => super.copyWith((message) => updates(message as ListDatabasesRequest_Request)) as ListDatabasesRequest_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDatabasesRequest_Request create() => ListDatabasesRequest_Request._();
  ListDatabasesRequest_Request createEmptyInstance() => create();
  static $pb.PbList<ListDatabasesRequest_Request> createRepeated() => $pb.PbList<ListDatabasesRequest_Request>();
  @$core.pragma('dart2js:noInline')
  static ListDatabasesRequest_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDatabasesRequest_Request>(create);
  static ListDatabasesRequest_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);

  @$pb.TagNumber(2)
  $9.BoolValue get nameOnly => $_getN(1);
  @$pb.TagNumber(2)
  set nameOnly($9.BoolValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNameOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearNameOnly() => clearField(2);
  @$pb.TagNumber(2)
  $9.BoolValue ensureNameOnly() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.BoolValue get authorizedDatabases => $_getN(2);
  @$pb.TagNumber(3)
  set authorizedDatabases($9.BoolValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthorizedDatabases() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthorizedDatabases() => clearField(3);
  @$pb.TagNumber(3)
  $9.BoolValue ensureAuthorizedDatabases() => $_ensure(2);
}

class ListDatabasesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDatabasesRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionOid', $pb.PbFieldType.OY, protoName: 'connectionOid')
    ..aOM<ListDatabasesRequest_Request>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: ListDatabasesRequest_Request.create)
    ..hasRequiredFields = false
  ;

  ListDatabasesRequest._() : super();
  factory ListDatabasesRequest({
    $core.List<$core.int>? connectionOid,
    ListDatabasesRequest_Request? request,
  }) {
    final _result = create();
    if (connectionOid != null) {
      _result.connectionOid = connectionOid;
    }
    if (request != null) {
      _result.request = request;
    }
    return _result;
  }
  factory ListDatabasesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDatabasesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDatabasesRequest clone() => ListDatabasesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDatabasesRequest copyWith(void Function(ListDatabasesRequest) updates) => super.copyWith((message) => updates(message as ListDatabasesRequest)) as ListDatabasesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDatabasesRequest create() => ListDatabasesRequest._();
  ListDatabasesRequest createEmptyInstance() => create();
  static $pb.PbList<ListDatabasesRequest> createRepeated() => $pb.PbList<ListDatabasesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDatabasesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDatabasesRequest>(create);
  static ListDatabasesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get connectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set connectionOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionOid() => clearField(1);

  @$pb.TagNumber(2)
  ListDatabasesRequest_Request get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(ListDatabasesRequest_Request v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  ListDatabasesRequest_Request ensureRequest() => $_ensure(1);
}

