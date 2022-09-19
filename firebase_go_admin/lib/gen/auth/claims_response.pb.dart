///
//  Generated code. Do not modify.
//  source: auth/claims_response.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'claim_base.pb.dart' as $26;

class ClaimsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClaimsResponse',
      createEmptyInstance: create)
    ..pc<$26.ClaimBase>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'claims',
        $pb.PbFieldType.PM,
        subBuilder: $26.ClaimBase.create)
    ..hasRequiredFields = false;

  ClaimsResponse._() : super();
  factory ClaimsResponse({
    $core.Iterable<$26.ClaimBase>? claims,
  }) {
    final _result = create();
    if (claims != null) {
      _result.claims.addAll(claims);
    }
    return _result;
  }
  factory ClaimsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClaimsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClaimsResponse clone() => ClaimsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClaimsResponse copyWith(void Function(ClaimsResponse) updates) =>
      super.copyWith((message) => updates(message as ClaimsResponse))
          as ClaimsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimsResponse create() => ClaimsResponse._();
  ClaimsResponse createEmptyInstance() => create();
  static $pb.PbList<ClaimsResponse> createRepeated() =>
      $pb.PbList<ClaimsResponse>();
  @$core.pragma('dart2js:noInline')
  static ClaimsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClaimsResponse>(create);
  static ClaimsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$26.ClaimBase> get claims => $_getList(0);
}
