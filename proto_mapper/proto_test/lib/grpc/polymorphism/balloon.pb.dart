///
//  Generated code. Do not modify.
//  source: polymorphism/balloon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GBalloon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GBalloon',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weight',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serviceCeiling',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GBalloon._() : super();
  factory GBalloon({
    $core.int? weight,
    $core.String? key,
    $core.int? serviceCeiling,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    if (key != null) {
      _result.key = key;
    }
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
    }
    return _result;
  }
  factory GBalloon.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GBalloon.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GBalloon clone() => GBalloon()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GBalloon copyWith(void Function(GBalloon) updates) =>
      super.copyWith((message) => updates(message as GBalloon))
          as GBalloon; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBalloon create() => GBalloon._();
  GBalloon createEmptyInstance() => create();
  static $pb.PbList<GBalloon> createRepeated() => $pb.PbList<GBalloon>();
  @$core.pragma('dart2js:noInline')
  static GBalloon getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBalloon>(create);
  static GBalloon? _defaultInstance;

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
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get serviceCeiling => $_getIZ(2);
  @$pb.TagNumber(3)
  set serviceCeiling($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasServiceCeiling() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceCeiling() => clearField(3);
}

class GListOfBalloon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfBalloon',
      createEmptyInstance: create)
    ..pc<GBalloon>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GBalloon.create)
    ..hasRequiredFields = false;

  GListOfBalloon._() : super();
  factory GListOfBalloon({
    $core.Iterable<GBalloon>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfBalloon.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfBalloon.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfBalloon clone() => GListOfBalloon()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfBalloon copyWith(void Function(GListOfBalloon) updates) =>
      super.copyWith((message) => updates(message as GListOfBalloon))
          as GListOfBalloon; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfBalloon create() => GListOfBalloon._();
  GListOfBalloon createEmptyInstance() => create();
  static $pb.PbList<GListOfBalloon> createRepeated() =>
      $pb.PbList<GListOfBalloon>();
  @$core.pragma('dart2js:noInline')
  static GListOfBalloon getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfBalloon>(create);
  static GListOfBalloon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GBalloon> get items => $_getList(0);
}
