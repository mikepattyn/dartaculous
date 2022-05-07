///
//  Generated code. Do not modify.
//  source: polymorphism/helicopter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GHelicopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GHelicopter',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weight',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serviceCeiling',
        $pb.PbFieldType.O3)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..hasRequiredFields = false;

  GHelicopter._() : super();
  factory GHelicopter({
    $core.int? weight,
    $core.int? serviceCeiling,
    $core.String? key,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GHelicopter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GHelicopter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GHelicopter clone() => GHelicopter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GHelicopter copyWith(void Function(GHelicopter) updates) =>
      super.copyWith((message) => updates(message as GHelicopter))
          as GHelicopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GHelicopter create() => GHelicopter._();
  GHelicopter createEmptyInstance() => create();
  static $pb.PbList<GHelicopter> createRepeated() => $pb.PbList<GHelicopter>();
  @$core.pragma('dart2js:noInline')
  static GHelicopter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GHelicopter>(create);
  static GHelicopter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(1)
  set weight($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get serviceCeiling => $_getIZ(1);
  @$pb.TagNumber(2)
  set serviceCeiling($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceCeiling() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceCeiling() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
}

class GListOfHelicopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfHelicopter',
      createEmptyInstance: create)
    ..pc<GHelicopter>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GHelicopter.create)
    ..hasRequiredFields = false;

  GListOfHelicopter._() : super();
  factory GListOfHelicopter({
    $core.Iterable<GHelicopter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfHelicopter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfHelicopter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfHelicopter clone() => GListOfHelicopter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfHelicopter copyWith(void Function(GListOfHelicopter) updates) =>
      super.copyWith((message) => updates(message as GListOfHelicopter))
          as GListOfHelicopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfHelicopter create() => GListOfHelicopter._();
  GListOfHelicopter createEmptyInstance() => create();
  static $pb.PbList<GListOfHelicopter> createRepeated() =>
      $pb.PbList<GListOfHelicopter>();
  @$core.pragma('dart2js:noInline')
  static GListOfHelicopter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfHelicopter>(create);
  static GListOfHelicopter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GHelicopter> get items => $_getList(0);
}
