///
//  Generated code. Do not modify.
//  source: polymorphism/vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'airplane.pb.dart' as $10;
import 'helicopter.pb.dart' as $11;
import 'gyrocopter.pb.dart' as $12;
import 'balloon.pb.dart' as $13;
import 'car.pb.dart' as $14;

class GFieldsOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GFieldsOfVehicle',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weight',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GFieldsOfVehicle._() : super();
  factory GFieldsOfVehicle({
    $core.int? weight,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory GFieldsOfVehicle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GFieldsOfVehicle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GFieldsOfVehicle clone() => GFieldsOfVehicle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GFieldsOfVehicle copyWith(void Function(GFieldsOfVehicle) updates) =>
      super.copyWith((message) => updates(message as GFieldsOfVehicle))
          as GFieldsOfVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfVehicle create() => GFieldsOfVehicle._();
  GFieldsOfVehicle createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfVehicle> createRepeated() =>
      $pb.PbList<GFieldsOfVehicle>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfVehicle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GFieldsOfVehicle>(create);
  static GFieldsOfVehicle? _defaultInstance;

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
}

enum GVehicle_Props {
  vehicle,
  airplane,
  helicopter,
  gyrocopter,
  balloon,
  car,
  notSet
}

class GVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GVehicle_Props> _GVehicle_PropsByTag = {
    1: GVehicle_Props.vehicle,
    2: GVehicle_Props.airplane,
    3: GVehicle_Props.helicopter,
    4: GVehicle_Props.gyrocopter,
    5: GVehicle_Props.balloon,
    6: GVehicle_Props.car,
    0: GVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GVehicle',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<GFieldsOfVehicle>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vehicle',
        subBuilder: GFieldsOfVehicle.create)
    ..aOM<$10.GAirplane>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'airplane',
        subBuilder: $10.GAirplane.create)
    ..aOM<$11.GHelicopter>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'helicopter',
        subBuilder: $11.GHelicopter.create)
    ..aOM<$12.GGyrocopter>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gyrocopter',
        subBuilder: $12.GGyrocopter.create)
    ..aOM<$13.GBalloon>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'balloon',
        subBuilder: $13.GBalloon.create)
    ..aOM<$14.GCar>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'car',
        subBuilder: $14.GCar.create)
    ..hasRequiredFields = false;

  GVehicle._() : super();
  factory GVehicle({
    GFieldsOfVehicle? vehicle,
    $10.GAirplane? airplane,
    $11.GHelicopter? helicopter,
    $12.GGyrocopter? gyrocopter,
    $13.GBalloon? balloon,
    $14.GCar? car,
  }) {
    final _result = create();
    if (vehicle != null) {
      _result.vehicle = vehicle;
    }
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
    if (car != null) {
      _result.car = car;
    }
    return _result;
  }
  factory GVehicle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GVehicle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GVehicle clone() => GVehicle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GVehicle copyWith(void Function(GVehicle) updates) =>
      super.copyWith((message) => updates(message as GVehicle))
          as GVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GVehicle create() => GVehicle._();
  GVehicle createEmptyInstance() => create();
  static $pb.PbList<GVehicle> createRepeated() => $pb.PbList<GVehicle>();
  @$core.pragma('dart2js:noInline')
  static GVehicle getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GVehicle>(create);
  static GVehicle? _defaultInstance;

  GVehicle_Props whichProps() => _GVehicle_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfVehicle get vehicle => $_getN(0);
  @$pb.TagNumber(1)
  set vehicle(GFieldsOfVehicle v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVehicle() => $_has(0);
  @$pb.TagNumber(1)
  void clearVehicle() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfVehicle ensureVehicle() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.GAirplane get airplane => $_getN(1);
  @$pb.TagNumber(2)
  set airplane($10.GAirplane v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAirplane() => $_has(1);
  @$pb.TagNumber(2)
  void clearAirplane() => clearField(2);
  @$pb.TagNumber(2)
  $10.GAirplane ensureAirplane() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.GHelicopter get helicopter => $_getN(2);
  @$pb.TagNumber(3)
  set helicopter($11.GHelicopter v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHelicopter() => $_has(2);
  @$pb.TagNumber(3)
  void clearHelicopter() => clearField(3);
  @$pb.TagNumber(3)
  $11.GHelicopter ensureHelicopter() => $_ensure(2);

  @$pb.TagNumber(4)
  $12.GGyrocopter get gyrocopter => $_getN(3);
  @$pb.TagNumber(4)
  set gyrocopter($12.GGyrocopter v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasGyrocopter() => $_has(3);
  @$pb.TagNumber(4)
  void clearGyrocopter() => clearField(4);
  @$pb.TagNumber(4)
  $12.GGyrocopter ensureGyrocopter() => $_ensure(3);

  @$pb.TagNumber(5)
  $13.GBalloon get balloon => $_getN(4);
  @$pb.TagNumber(5)
  set balloon($13.GBalloon v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBalloon() => $_has(4);
  @$pb.TagNumber(5)
  void clearBalloon() => clearField(5);
  @$pb.TagNumber(5)
  $13.GBalloon ensureBalloon() => $_ensure(4);

  @$pb.TagNumber(6)
  $14.GCar get car => $_getN(5);
  @$pb.TagNumber(6)
  set car($14.GCar v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCar() => $_has(5);
  @$pb.TagNumber(6)
  void clearCar() => clearField(6);
  @$pb.TagNumber(6)
  $14.GCar ensureCar() => $_ensure(5);
}

class GListOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfVehicle',
      createEmptyInstance: create)
    ..pc<GVehicle>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GVehicle.create)
    ..hasRequiredFields = false;

  GListOfVehicle._() : super();
  factory GListOfVehicle({
    $core.Iterable<GVehicle>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfVehicle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfVehicle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfVehicle clone() => GListOfVehicle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfVehicle copyWith(void Function(GListOfVehicle) updates) =>
      super.copyWith((message) => updates(message as GListOfVehicle))
          as GListOfVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfVehicle create() => GListOfVehicle._();
  GListOfVehicle createEmptyInstance() => create();
  static $pb.PbList<GListOfVehicle> createRepeated() =>
      $pb.PbList<GListOfVehicle>();
  @$core.pragma('dart2js:noInline')
  static GListOfVehicle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfVehicle>(create);
  static GListOfVehicle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GVehicle> get items => $_getList(0);
}
