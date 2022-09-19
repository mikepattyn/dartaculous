///
//  Generated code. Do not modify.
//  source: firebase/claim_base.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'bool_claim.pb.dart' as $23;
import 'string_claim.pb.dart' as $24;
import 'string_list_claim.pb.dart' as $25;

enum ClaimBase_Props { boolClaim, stringClaim, stringListClaim, notSet }

class ClaimBase extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClaimBase_Props> _ClaimBase_PropsByTag = {
    1: ClaimBase_Props.boolClaim,
    2: ClaimBase_Props.stringClaim,
    3: ClaimBase_Props.stringListClaim,
    0: ClaimBase_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClaimBase',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$23.BoolClaim>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'boolClaim',
        subBuilder: $23.BoolClaim.create)
    ..aOM<$24.StringClaim>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stringClaim',
        subBuilder: $24.StringClaim.create)
    ..aOM<$25.StringListClaim>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stringListClaim',
        subBuilder: $25.StringListClaim.create)
    ..hasRequiredFields = false;

  ClaimBase._() : super();
  factory ClaimBase({
    $23.BoolClaim? boolClaim,
    $24.StringClaim? stringClaim,
    $25.StringListClaim? stringListClaim,
  }) {
    final _result = create();
    if (boolClaim != null) {
      _result.boolClaim = boolClaim;
    }
    if (stringClaim != null) {
      _result.stringClaim = stringClaim;
    }
    if (stringListClaim != null) {
      _result.stringListClaim = stringListClaim;
    }
    return _result;
  }
  factory ClaimBase.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClaimBase.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClaimBase clone() => ClaimBase()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClaimBase copyWith(void Function(ClaimBase) updates) =>
      super.copyWith((message) => updates(message as ClaimBase))
          as ClaimBase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimBase create() => ClaimBase._();
  ClaimBase createEmptyInstance() => create();
  static $pb.PbList<ClaimBase> createRepeated() => $pb.PbList<ClaimBase>();
  @$core.pragma('dart2js:noInline')
  static ClaimBase getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClaimBase>(create);
  static ClaimBase? _defaultInstance;

  ClaimBase_Props whichProps() => _ClaimBase_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $23.BoolClaim get boolClaim => $_getN(0);
  @$pb.TagNumber(1)
  set boolClaim($23.BoolClaim v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBoolClaim() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoolClaim() => clearField(1);
  @$pb.TagNumber(1)
  $23.BoolClaim ensureBoolClaim() => $_ensure(0);

  @$pb.TagNumber(2)
  $24.StringClaim get stringClaim => $_getN(1);
  @$pb.TagNumber(2)
  set stringClaim($24.StringClaim v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStringClaim() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringClaim() => clearField(2);
  @$pb.TagNumber(2)
  $24.StringClaim ensureStringClaim() => $_ensure(1);

  @$pb.TagNumber(3)
  $25.StringListClaim get stringListClaim => $_getN(2);
  @$pb.TagNumber(3)
  set stringListClaim($25.StringListClaim v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStringListClaim() => $_has(2);
  @$pb.TagNumber(3)
  void clearStringListClaim() => clearField(3);
  @$pb.TagNumber(3)
  $25.StringListClaim ensureStringListClaim() => $_ensure(2);
}
