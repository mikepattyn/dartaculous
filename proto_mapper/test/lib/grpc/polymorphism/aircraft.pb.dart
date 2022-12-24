///
//  Generated code. Do not modify.
//  source: polymorphism/aircraft.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'airplane.pb.dart' as $13;
import 'helicopter.pb.dart' as $14;
import 'gyrocopter.pb.dart' as $15;
import 'balloon.pb.dart' as $16;

class GFieldsOfAircraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAircraft', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfAircraft._() : super();
  factory GFieldsOfAircraft() => create();
  factory GFieldsOfAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAircraft clone() => GFieldsOfAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAircraft copyWith(void Function(GFieldsOfAircraft) updates) => super.copyWith((message) => updates(message as GFieldsOfAircraft)) as GFieldsOfAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAircraft create() => GFieldsOfAircraft._();
  GFieldsOfAircraft createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAircraft> createRepeated() => $pb.PbList<GFieldsOfAircraft>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAircraft>(create);
  static GFieldsOfAircraft? _defaultInstance;
}

enum GAircraft_Props {
  airplane, 
  helicopter, 
  gyrocopter, 
  balloon, 
  notSet
}

class GAircraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAircraft_Props> _GAircraft_PropsByTag = {
    1 : GAircraft_Props.airplane,
    2 : GAircraft_Props.helicopter,
    3 : GAircraft_Props.gyrocopter,
    4 : GAircraft_Props.balloon,
    0 : GAircraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAircraft', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$13.GAirplane>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airplane', subBuilder: $13.GAirplane.create)
    ..aOM<$14.GHelicopter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'helicopter', subBuilder: $14.GHelicopter.create)
    ..aOM<$15.GGyrocopter>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gyrocopter', subBuilder: $15.GGyrocopter.create)
    ..aOM<$16.GBalloon>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balloon', subBuilder: $16.GBalloon.create)
    ..hasRequiredFields = false
  ;

  GAircraft._() : super();
  factory GAircraft({
    $13.GAirplane? airplane,
    $14.GHelicopter? helicopter,
    $15.GGyrocopter? gyrocopter,
    $16.GBalloon? balloon,
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
  factory GAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAircraft clone() => GAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAircraft copyWith(void Function(GAircraft) updates) => super.copyWith((message) => updates(message as GAircraft)) as GAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAircraft create() => GAircraft._();
  GAircraft createEmptyInstance() => create();
  static $pb.PbList<GAircraft> createRepeated() => $pb.PbList<GAircraft>();
  @$core.pragma('dart2js:noInline')
  static GAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAircraft>(create);
  static GAircraft? _defaultInstance;

  GAircraft_Props whichProps() => _GAircraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $13.GAirplane get airplane => $_getN(0);
  @$pb.TagNumber(1)
  set airplane($13.GAirplane v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAirplane() => $_has(0);
  @$pb.TagNumber(1)
  void clearAirplane() => clearField(1);
  @$pb.TagNumber(1)
  $13.GAirplane ensureAirplane() => $_ensure(0);

  @$pb.TagNumber(2)
  $14.GHelicopter get helicopter => $_getN(1);
  @$pb.TagNumber(2)
  set helicopter($14.GHelicopter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHelicopter() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelicopter() => clearField(2);
  @$pb.TagNumber(2)
  $14.GHelicopter ensureHelicopter() => $_ensure(1);

  @$pb.TagNumber(3)
  $15.GGyrocopter get gyrocopter => $_getN(2);
  @$pb.TagNumber(3)
  set gyrocopter($15.GGyrocopter v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGyrocopter() => $_has(2);
  @$pb.TagNumber(3)
  void clearGyrocopter() => clearField(3);
  @$pb.TagNumber(3)
  $15.GGyrocopter ensureGyrocopter() => $_ensure(2);

  @$pb.TagNumber(4)
  $16.GBalloon get balloon => $_getN(3);
  @$pb.TagNumber(4)
  set balloon($16.GBalloon v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBalloon() => $_has(3);
  @$pb.TagNumber(4)
  void clearBalloon() => clearField(4);
  @$pb.TagNumber(4)
  $16.GBalloon ensureBalloon() => $_ensure(3);
}

class GListOfAircraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAircraft', createEmptyInstance: create)
    ..pc<GAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAircraft.create)
    ..hasRequiredFields = false
  ;

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
  factory GListOfAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAircraft clone() => GListOfAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAircraft copyWith(void Function(GListOfAircraft) updates) => super.copyWith((message) => updates(message as GListOfAircraft)) as GListOfAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAircraft create() => GListOfAircraft._();
  GListOfAircraft createEmptyInstance() => create();
  static $pb.PbList<GListOfAircraft> createRepeated() => $pb.PbList<GListOfAircraft>();
  @$core.pragma('dart2js:noInline')
  static GListOfAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAircraft>(create);
  static GListOfAircraft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAircraft> get items => $_getList(0);
}

