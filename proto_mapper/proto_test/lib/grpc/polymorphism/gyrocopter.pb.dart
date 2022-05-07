///
//  Generated code. Do not modify.
//  source: polymorphism/gyrocopter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GGyrocopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GGyrocopter',
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

  GGyrocopter._() : super();
  factory GGyrocopter({
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
  factory GGyrocopter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GGyrocopter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GGyrocopter clone() => GGyrocopter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GGyrocopter copyWith(void Function(GGyrocopter) updates) =>
      super.copyWith((message) => updates(message as GGyrocopter))
          as GGyrocopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGyrocopter create() => GGyrocopter._();
  GGyrocopter createEmptyInstance() => create();
  static $pb.PbList<GGyrocopter> createRepeated() => $pb.PbList<GGyrocopter>();
  @$core.pragma('dart2js:noInline')
  static GGyrocopter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GGyrocopter>(create);
  static GGyrocopter? _defaultInstance;

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

class GListOfGyrocopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfGyrocopter',
      createEmptyInstance: create)
    ..pc<GGyrocopter>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GGyrocopter.create)
    ..hasRequiredFields = false;

  GListOfGyrocopter._() : super();
  factory GListOfGyrocopter({
    $core.Iterable<GGyrocopter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfGyrocopter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfGyrocopter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfGyrocopter clone() => GListOfGyrocopter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfGyrocopter copyWith(void Function(GListOfGyrocopter) updates) =>
      super.copyWith((message) => updates(message as GListOfGyrocopter))
          as GListOfGyrocopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfGyrocopter create() => GListOfGyrocopter._();
  GListOfGyrocopter createEmptyInstance() => create();
  static $pb.PbList<GListOfGyrocopter> createRepeated() =>
      $pb.PbList<GListOfGyrocopter>();
  @$core.pragma('dart2js:noInline')
  static GListOfGyrocopter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfGyrocopter>(create);
  static GListOfGyrocopter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GGyrocopter> get items => $_getList(0);
}
