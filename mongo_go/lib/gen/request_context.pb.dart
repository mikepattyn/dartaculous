///
//  Generated code. Do not modify.
//  source: request_context.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $22;
import 'transaction_identifier.pb.dart' as $23;

enum RequestContext_Types { empty, withTransaction, notSet }

class RequestContext extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RequestContext_Types>
      _RequestContext_TypesByTag = {
    1: RequestContext_Types.empty,
    2: RequestContext_Types.withTransaction,
    0: RequestContext_Types.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestContext',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$22.Empty>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'empty',
        subBuilder: $22.Empty.create)
    ..aOM<$23.TransactionIdentifier>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'withTransaction',
        protoName: 'withTransaction',
        subBuilder: $23.TransactionIdentifier.create)
    ..hasRequiredFields = false;

  RequestContext._() : super();
  factory RequestContext({
    $22.Empty? empty,
    $23.TransactionIdentifier? withTransaction,
  }) {
    final _result = create();
    if (empty != null) {
      _result.empty = empty;
    }
    if (withTransaction != null) {
      _result.withTransaction = withTransaction;
    }
    return _result;
  }
  factory RequestContext.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestContext.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestContext clone() => RequestContext()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestContext copyWith(void Function(RequestContext) updates) =>
      super.copyWith((message) => updates(message as RequestContext))
          as RequestContext; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestContext create() => RequestContext._();
  RequestContext createEmptyInstance() => create();
  static $pb.PbList<RequestContext> createRepeated() =>
      $pb.PbList<RequestContext>();
  @$core.pragma('dart2js:noInline')
  static RequestContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestContext>(create);
  static RequestContext? _defaultInstance;

  RequestContext_Types whichTypes() =>
      _RequestContext_TypesByTag[$_whichOneof(0)]!;
  void clearTypes() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $22.Empty get empty => $_getN(0);
  @$pb.TagNumber(1)
  set empty($22.Empty v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEmpty() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpty() => clearField(1);
  @$pb.TagNumber(1)
  $22.Empty ensureEmpty() => $_ensure(0);

  @$pb.TagNumber(2)
  $23.TransactionIdentifier get withTransaction => $_getN(1);
  @$pb.TagNumber(2)
  set withTransaction($23.TransactionIdentifier v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWithTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearWithTransaction() => clearField(2);
  @$pb.TagNumber(2)
  $23.TransactionIdentifier ensureWithTransaction() => $_ensure(1);
}
