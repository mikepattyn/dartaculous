///
//  Generated code. Do not modify.
//  source: polymorphism/aircraft.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'airplane.pb.dart' as $10;
import 'helicopter.pb.dart' as $11;
import 'gyrocopter.pb.dart' as $12;
import 'balloon.pb.dart' as $13;

enum GAircraft_Props { airplane, helicopter, gyrocopter, balloon, notSet }

class GAircraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAircraft_Props> _GAircraft_PropsByTag = {
    1: GAircraft_Props.airplane,
    2: GAircraft_Props.helicopter,
    3: GAircraft_Props.gyrocopter,
    4: GAircraft_Props.balloon,
    0: GAircraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GAircraft',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$10.GAirplane>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'airplane',
        subBuilder: $10.GAirplane.create)
    ..aOM<$11.GHelicopter>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'helicopter',
        subBuilder: $11.GHelicopter.create)
    ..aOM<$12.GGyrocopter>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gyrocopter',
        subBuilder: $12.GGyrocopter.create)
    ..aOM<$13.GBalloon>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'balloon',
        subBuilder: $13.GBalloon.create)
    ..hasRequiredFields = false;

  GAircraft._() : super();
  factory GAircraft({
    $10.GAirplane? airplane,
    $11.GHelicopter? helicopter,
    $12.GGyrocopter? gyrocopter,
    $13.GBalloon? balloon,
  }) {
    final _result = create();
    if (airplane != null) {
      _result.airplane = airplane;
    }
    if (helicopter != null) {
      _result.helicopter = helicopter;
    }
    if (gyrocopter != null) {
      _result.gyrocopter = gyrocopter;
    }
    if (balloon != null) {
      _result.balloon = balloon;
    }
    return _result;
  }
  factory GAircraft.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GAircraft.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GAircraft clone() => GAircraft()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GAircraft copyWith(void Function(GAircraft) updates) =>
      super.copyWith((message) => updates(message as GAircraft))
          as GAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAircraft create() => GAircraft._();
  GAircraft createEmptyInstance() => create();
  static $pb.PbList<GAircraft> createRepeated() => $pb.PbList<GAircraft>();
  @$core.pragma('dart2js:noInline')
  static GAircraft getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAircraft>(create);
  static GAircraft? _defaultInstance;

  GAircraft_Props whichProps() => _GAircraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $10.GAirplane get airplane => $_getN(0);
  @$pb.TagNumber(1)
  set airplane($10.GAirplane v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAirplane() => $_has(0);
  @$pb.TagNumber(1)
  void clearAirplane() => clearField(1);
  @$pb.TagNumber(1)
  $10.GAirplane ensureAirplane() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.GHelicopter get helicopter => $_getN(1);
  @$pb.TagNumber(2)
  set helicopter($11.GHelicopter v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHelicopter() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelicopter() => clearField(2);
  @$pb.TagNumber(2)
  $11.GHelicopter ensureHelicopter() => $_ensure(1);

  @$pb.TagNumber(3)
  $12.GGyrocopter get gyrocopter => $_getN(2);
  @$pb.TagNumber(3)
  set gyrocopter($12.GGyrocopter v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGyrocopter() => $_has(2);
  @$pb.TagNumber(3)
  void clearGyrocopter() => clearField(3);
  @$pb.TagNumber(3)
  $12.GGyrocopter ensureGyrocopter() => $_ensure(2);

  @$pb.TagNumber(4)
  $13.GBalloon get balloon => $_getN(3);
  @$pb.TagNumber(4)
  set balloon($13.GBalloon v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBalloon() => $_has(3);
  @$pb.TagNumber(4)
  void clearBalloon() => clearField(4);
  @$pb.TagNumber(4)
  $13.GBalloon ensureBalloon() => $_ensure(3);
}

class GListOfAircraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfAircraft',
      createEmptyInstance: create)
    ..pc<GAircraft>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GAircraft.create)
    ..hasRequiredFields = false;

  GListOfAircraft._() : super();
  factory GListOfAircraft({
    $core.Iterable<GAircraft>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAircraft.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfAircraft.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfAircraft clone() => GListOfAircraft()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfAircraft copyWith(void Function(GListOfAircraft) updates) =>
      super.copyWith((message) => updates(message as GListOfAircraft))
          as GListOfAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAircraft create() => GListOfAircraft._();
  GListOfAircraft createEmptyInstance() => create();
  static $pb.PbList<GListOfAircraft> createRepeated() =>
      $pb.PbList<GListOfAircraft>();
  @$core.pragma('dart2js:noInline')
  static GListOfAircraft getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfAircraft>(create);
  static GListOfAircraft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAircraft> get items => $_getList(0);
}
