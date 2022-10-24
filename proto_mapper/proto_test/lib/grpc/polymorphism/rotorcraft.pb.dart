///
//  Generated code. Do not modify.
//  source: polymorphism/rotorcraft.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'helicopter.pb.dart' as $14;
import 'gyrocopter.pb.dart' as $15;

enum GRotorcraft_Props {
  helicopter, 
  gyrocopter, 
  notSet
}

class GRotorcraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GRotorcraft_Props> _GRotorcraft_PropsByTag = {
    1 : GRotorcraft_Props.helicopter,
    2 : GRotorcraft_Props.gyrocopter,
    0 : GRotorcraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRotorcraft', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$14.GHelicopter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'helicopter', subBuilder: $14.GHelicopter.create)
    ..aOM<$15.GGyrocopter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gyrocopter', subBuilder: $15.GGyrocopter.create)
    ..hasRequiredFields = false
  ;

  GRotorcraft._() : super();
  factory GRotorcraft({
    $14.GHelicopter? helicopter,
    $15.GGyrocopter? gyrocopter,
  }) {
    final _result = create();
    if (helicopter != null) {
      _result.helicopter = helicopter;
    }
    if (gyrocopter != null) {
      _result.gyrocopter = gyrocopter;
    }
    return _result;
  }
  factory GRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRotorcraft clone() => GRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRotorcraft copyWith(void Function(GRotorcraft) updates) => super.copyWith((message) => updates(message as GRotorcraft)) as GRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRotorcraft create() => GRotorcraft._();
  GRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GRotorcraft> createRepeated() => $pb.PbList<GRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRotorcraft>(create);
  static GRotorcraft? _defaultInstance;

  GRotorcraft_Props whichProps() => _GRotorcraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $14.GHelicopter get helicopter => $_getN(0);
  @$pb.TagNumber(1)
  set helicopter($14.GHelicopter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHelicopter() => $_has(0);
  @$pb.TagNumber(1)
  void clearHelicopter() => clearField(1);
  @$pb.TagNumber(1)
  $14.GHelicopter ensureHelicopter() => $_ensure(0);

  @$pb.TagNumber(2)
  $15.GGyrocopter get gyrocopter => $_getN(1);
  @$pb.TagNumber(2)
  set gyrocopter($15.GGyrocopter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGyrocopter() => $_has(1);
  @$pb.TagNumber(2)
  void clearGyrocopter() => clearField(2);
  @$pb.TagNumber(2)
  $15.GGyrocopter ensureGyrocopter() => $_ensure(1);
}

class GListOfRotorcraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfRotorcraft', createEmptyInstance: create)
    ..pc<GRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GRotorcraft.create)
    ..hasRequiredFields = false
  ;

  GListOfRotorcraft._() : super();
  factory GListOfRotorcraft({
    $core.Iterable<GRotorcraft>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfRotorcraft clone() => GListOfRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfRotorcraft copyWith(void Function(GListOfRotorcraft) updates) => super.copyWith((message) => updates(message as GListOfRotorcraft)) as GListOfRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfRotorcraft create() => GListOfRotorcraft._();
  GListOfRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GListOfRotorcraft> createRepeated() => $pb.PbList<GListOfRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GListOfRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfRotorcraft>(create);
  static GListOfRotorcraft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRotorcraft> get items => $_getList(0);
}

