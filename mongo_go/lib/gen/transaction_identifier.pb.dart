///
//  Generated code. Do not modify.
//  source: transaction_identifier.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TransactionIdentifier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionIdentifier', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionOid', $pb.PbFieldType.OY, protoName: 'sessionOid')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionId', $pb.PbFieldType.OY, protoName: 'transactionId')
    ..hasRequiredFields = false
  ;

  TransactionIdentifier._() : super();
  factory TransactionIdentifier({
    $core.List<$core.int>? sessionOid,
    $core.List<$core.int>? transactionId,
  }) {
    final _result = create();
    if (sessionOid != null) {
      _result.sessionOid = sessionOid;
    }
    if (transactionId != null) {
      _result.transactionId = transactionId;
    }
    return _result;
  }
  factory TransactionIdentifier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionIdentifier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionIdentifier clone() => TransactionIdentifier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionIdentifier copyWith(void Function(TransactionIdentifier) updates) => super.copyWith((message) => updates(message as TransactionIdentifier)) as TransactionIdentifier; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionIdentifier create() => TransactionIdentifier._();
  TransactionIdentifier createEmptyInstance() => create();
  static $pb.PbList<TransactionIdentifier> createRepeated() => $pb.PbList<TransactionIdentifier>();
  @$core.pragma('dart2js:noInline')
  static TransactionIdentifier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionIdentifier>(create);
  static TransactionIdentifier? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get sessionOid => $_getN(0);
  @$pb.TagNumber(2)
  set sessionOid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionOid() => $_has(0);
  @$pb.TagNumber(2)
  void clearSessionOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get transactionId => $_getN(1);
  @$pb.TagNumber(3)
  set transactionId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransactionId() => $_has(1);
  @$pb.TagNumber(3)
  void clearTransactionId() => clearField(3);
}

