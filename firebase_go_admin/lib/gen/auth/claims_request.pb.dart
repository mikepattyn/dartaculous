///
//  Generated code. Do not modify.
//  source: auth/claims_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'claim_base.pb.dart' as $26;

class ClaimsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClaimsRequest',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uid')
    ..pc<$26.ClaimBase>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'claims',
        $pb.PbFieldType.PM,
        subBuilder: $26.ClaimBase.create)
    ..hasRequiredFields = false;

  ClaimsRequest._() : super();
  factory ClaimsRequest({
    $core.String? uid,
    $core.Iterable<$26.ClaimBase>? claims,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (claims != null) {
      _result.claims.addAll(claims);
    }
    return _result;
  }
  factory ClaimsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClaimsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClaimsRequest clone() => ClaimsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClaimsRequest copyWith(void Function(ClaimsRequest) updates) =>
      super.copyWith((message) => updates(message as ClaimsRequest))
          as ClaimsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimsRequest create() => ClaimsRequest._();
  ClaimsRequest createEmptyInstance() => create();
  static $pb.PbList<ClaimsRequest> createRepeated() =>
      $pb.PbList<ClaimsRequest>();
  @$core.pragma('dart2js:noInline')
  static ClaimsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClaimsRequest>(create);
  static ClaimsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$26.ClaimBase> get claims => $_getList(1);
}
