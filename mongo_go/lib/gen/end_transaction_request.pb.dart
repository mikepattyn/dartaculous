///
//  Generated code. Do not modify.
//  source: end_transaction_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EndTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EndTransactionRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'connectionOid',
        $pb.PbFieldType.OY,
        protoName: 'connectionOid')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sessionOid',
        $pb.PbFieldType.OY,
        protoName: 'sessionOid')
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionOid',
        $pb.PbFieldType.OY,
        protoName: 'transactionOid')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'errorMessage',
        protoName: 'errorMessage')
    ..hasRequiredFields = false;

  EndTransactionRequest._() : super();
  factory EndTransactionRequest({
    $core.List<$core.int>? connectionOid,
    $core.List<$core.int>? sessionOid,
    $core.List<$core.int>? transactionOid,
    $core.String? errorMessage,
  }) {
    final _result = create();
    if (connectionOid != null) {
      _result.connectionOid = connectionOid;
    }
    if (sessionOid != null) {
      _result.sessionOid = sessionOid;
    }
    if (transactionOid != null) {
      _result.transactionOid = transactionOid;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    return _result;
  }
  factory EndTransactionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EndTransactionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EndTransactionRequest clone() =>
      EndTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EndTransactionRequest copyWith(
          void Function(EndTransactionRequest) updates) =>
      super.copyWith((message) => updates(message as EndTransactionRequest))
          as EndTransactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EndTransactionRequest create() => EndTransactionRequest._();
  EndTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<EndTransactionRequest> createRepeated() =>
      $pb.PbList<EndTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static EndTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EndTransactionRequest>(create);
  static EndTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get connectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set connectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConnectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionOid() => clearField(1);

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
  $core.List<$core.int> get transactionOid => $_getN(2);
  @$pb.TagNumber(3)
  set transactionOid($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTransactionOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionOid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get errorMessage => $_getSZ(3);
  @$pb.TagNumber(4)
  set errorMessage($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasErrorMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrorMessage() => clearField(4);
}
