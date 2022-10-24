///
//  Generated code. Do not modify.
//  source: prefixes.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'prefixes.pbenum.dart';

export 'prefixes.pbenum.dart';

enum BStaff_Props {
  chef, 
  waiter, 
  manager, 
  notSet
}

class BStaff extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BStaff_Props> _BStaff_PropsByTag = {
    1 : BStaff_Props.chef,
    2 : BStaff_Props.waiter,
    3 : BStaff_Props.manager,
    0 : BStaff_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BStaff', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chef', subBuilder: CChef.create)
    ..aOM<GWaiter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waiter', subBuilder: GWaiter.create)
    ..aOM<MManager>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manager', subBuilder: MManager.create)
    ..hasRequiredFields = false
  ;

  BStaff._() : super();
  factory BStaff({
    CChef? chef,
    GWaiter? waiter,
    MManager? manager,
  }) {
    final _result = create();
    if (chef != null) {
      _result.chef = chef;
    }
    if (waiter != null) {
      _result.waiter = waiter;
    }
    if (manager != null) {
      _result.manager = manager;
    }
    return _result;
  }
  factory BStaff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BStaff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BStaff clone() => BStaff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BStaff copyWith(void Function(BStaff) updates) => super.copyWith((message) => updates(message as BStaff)) as BStaff; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BStaff create() => BStaff._();
  BStaff createEmptyInstance() => create();
  static $pb.PbList<BStaff> createRepeated() => $pb.PbList<BStaff>();
  @$core.pragma('dart2js:noInline')
  static BStaff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BStaff>(create);
  static BStaff? _defaultInstance;

  BStaff_Props whichProps() => _BStaff_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CChef get chef => $_getN(0);
  @$pb.TagNumber(1)
  set chef(CChef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChef() => $_has(0);
  @$pb.TagNumber(1)
  void clearChef() => clearField(1);
  @$pb.TagNumber(1)
  CChef ensureChef() => $_ensure(0);

  @$pb.TagNumber(2)
  GWaiter get waiter => $_getN(1);
  @$pb.TagNumber(2)
  set waiter(GWaiter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWaiter() => $_has(1);
  @$pb.TagNumber(2)
  void clearWaiter() => clearField(2);
  @$pb.TagNumber(2)
  GWaiter ensureWaiter() => $_ensure(1);

  @$pb.TagNumber(3)
  MManager get manager => $_getN(2);
  @$pb.TagNumber(3)
  set manager(MManager v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasManager() => $_has(2);
  @$pb.TagNumber(3)
  void clearManager() => clearField(3);
  @$pb.TagNumber(3)
  MManager ensureManager() => $_ensure(2);
}

class BListOfStaff extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BListOfStaff', createEmptyInstance: create)
    ..pc<BStaff>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: BStaff.create)
    ..hasRequiredFields = false
  ;

  BListOfStaff._() : super();
  factory BListOfStaff({
    $core.Iterable<BStaff>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory BListOfStaff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BListOfStaff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BListOfStaff clone() => BListOfStaff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BListOfStaff copyWith(void Function(BListOfStaff) updates) => super.copyWith((message) => updates(message as BListOfStaff)) as BListOfStaff; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BListOfStaff create() => BListOfStaff._();
  BListOfStaff createEmptyInstance() => create();
  static $pb.PbList<BListOfStaff> createRepeated() => $pb.PbList<BListOfStaff>();
  @$core.pragma('dart2js:noInline')
  static BListOfStaff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BListOfStaff>(create);
  static BListOfStaff? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BStaff> get items => $_getList(0);
}

class CChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CChef', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<AFoodCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteFood', $pb.PbFieldType.OE, defaultOrMaker: AFoodCategory.A_FOOD_CATEGORY_VEGETABLES, valueOf: AFoodCategory.valueOf, enumValues: AFoodCategory.values)
    ..aOM<MManager>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manager', subBuilder: MManager.create)
    ..hasRequiredFields = false
  ;

  CChef._() : super();
  factory CChef({
    $core.String? name,
    AFoodCategory? favoriteFood,
    MManager? manager,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (favoriteFood != null) {
      _result.favoriteFood = favoriteFood;
    }
    if (manager != null) {
      _result.manager = manager;
    }
    return _result;
  }
  factory CChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CChef clone() => CChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CChef copyWith(void Function(CChef) updates) => super.copyWith((message) => updates(message as CChef)) as CChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CChef create() => CChef._();
  CChef createEmptyInstance() => create();
  static $pb.PbList<CChef> createRepeated() => $pb.PbList<CChef>();
  @$core.pragma('dart2js:noInline')
  static CChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CChef>(create);
  static CChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  AFoodCategory get favoriteFood => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteFood(AFoodCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteFood() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteFood() => clearField(2);

  @$pb.TagNumber(3)
  MManager get manager => $_getN(2);
  @$pb.TagNumber(3)
  set manager(MManager v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasManager() => $_has(2);
  @$pb.TagNumber(3)
  void clearManager() => clearField(3);
  @$pb.TagNumber(3)
  MManager ensureManager() => $_ensure(2);
}

class CListOfChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CListOfChef', createEmptyInstance: create)
    ..pc<CChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CChef.create)
    ..hasRequiredFields = false
  ;

  CListOfChef._() : super();
  factory CListOfChef({
    $core.Iterable<CChef>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory CListOfChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CListOfChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CListOfChef clone() => CListOfChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CListOfChef copyWith(void Function(CListOfChef) updates) => super.copyWith((message) => updates(message as CListOfChef)) as CListOfChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CListOfChef create() => CListOfChef._();
  CListOfChef createEmptyInstance() => create();
  static $pb.PbList<CListOfChef> createRepeated() => $pb.PbList<CListOfChef>();
  @$core.pragma('dart2js:noInline')
  static CListOfChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CListOfChef>(create);
  static CListOfChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CChef> get items => $_getList(0);
}

class GWaiter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GWaiter', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<AFoodCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteFood', $pb.PbFieldType.OE, defaultOrMaker: AFoodCategory.A_FOOD_CATEGORY_VEGETABLES, valueOf: AFoodCategory.valueOf, enumValues: AFoodCategory.values)
    ..aOM<MManager>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manager', subBuilder: MManager.create)
    ..pc<TTable>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'table', $pb.PbFieldType.PM, subBuilder: TTable.create)
    ..hasRequiredFields = false
  ;

  GWaiter._() : super();
  factory GWaiter({
    $core.String? name,
    AFoodCategory? favoriteFood,
    MManager? manager,
    $core.Iterable<TTable>? table,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (favoriteFood != null) {
      _result.favoriteFood = favoriteFood;
    }
    if (manager != null) {
      _result.manager = manager;
    }
    if (table != null) {
      _result.table.addAll(table);
    }
    return _result;
  }
  factory GWaiter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GWaiter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GWaiter clone() => GWaiter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GWaiter copyWith(void Function(GWaiter) updates) => super.copyWith((message) => updates(message as GWaiter)) as GWaiter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GWaiter create() => GWaiter._();
  GWaiter createEmptyInstance() => create();
  static $pb.PbList<GWaiter> createRepeated() => $pb.PbList<GWaiter>();
  @$core.pragma('dart2js:noInline')
  static GWaiter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GWaiter>(create);
  static GWaiter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  AFoodCategory get favoriteFood => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteFood(AFoodCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteFood() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteFood() => clearField(2);

  @$pb.TagNumber(3)
  MManager get manager => $_getN(2);
  @$pb.TagNumber(3)
  set manager(MManager v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasManager() => $_has(2);
  @$pb.TagNumber(3)
  void clearManager() => clearField(3);
  @$pb.TagNumber(3)
  MManager ensureManager() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<TTable> get table => $_getList(3);
}

class GListOfWaiter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfWaiter', createEmptyInstance: create)
    ..pc<GWaiter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GWaiter.create)
    ..hasRequiredFields = false
  ;

  GListOfWaiter._() : super();
  factory GListOfWaiter({
    $core.Iterable<GWaiter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfWaiter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfWaiter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfWaiter clone() => GListOfWaiter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfWaiter copyWith(void Function(GListOfWaiter) updates) => super.copyWith((message) => updates(message as GListOfWaiter)) as GListOfWaiter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfWaiter create() => GListOfWaiter._();
  GListOfWaiter createEmptyInstance() => create();
  static $pb.PbList<GListOfWaiter> createRepeated() => $pb.PbList<GListOfWaiter>();
  @$core.pragma('dart2js:noInline')
  static GListOfWaiter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfWaiter>(create);
  static GListOfWaiter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GWaiter> get items => $_getList(0);
}

class MManager extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MManager', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<AFoodCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteFood', $pb.PbFieldType.OE, defaultOrMaker: AFoodCategory.A_FOOD_CATEGORY_VEGETABLES, valueOf: AFoodCategory.valueOf, enumValues: AFoodCategory.values)
    ..hasRequiredFields = false
  ;

  MManager._() : super();
  factory MManager({
    $core.String? name,
    AFoodCategory? favoriteFood,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (favoriteFood != null) {
      _result.favoriteFood = favoriteFood;
    }
    return _result;
  }
  factory MManager.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MManager.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MManager clone() => MManager()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MManager copyWith(void Function(MManager) updates) => super.copyWith((message) => updates(message as MManager)) as MManager; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MManager create() => MManager._();
  MManager createEmptyInstance() => create();
  static $pb.PbList<MManager> createRepeated() => $pb.PbList<MManager>();
  @$core.pragma('dart2js:noInline')
  static MManager getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MManager>(create);
  static MManager? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  AFoodCategory get favoriteFood => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteFood(AFoodCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteFood() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteFood() => clearField(2);
}

class MListOfManager extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MListOfManager', createEmptyInstance: create)
    ..pc<MManager>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: MManager.create)
    ..hasRequiredFields = false
  ;

  MListOfManager._() : super();
  factory MListOfManager({
    $core.Iterable<MManager>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory MListOfManager.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MListOfManager.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MListOfManager clone() => MListOfManager()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MListOfManager copyWith(void Function(MListOfManager) updates) => super.copyWith((message) => updates(message as MListOfManager)) as MListOfManager; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MListOfManager create() => MListOfManager._();
  MListOfManager createEmptyInstance() => create();
  static $pb.PbList<MListOfManager> createRepeated() => $pb.PbList<MListOfManager>();
  @$core.pragma('dart2js:noInline')
  static MListOfManager getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MListOfManager>(create);
  static MListOfManager? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MManager> get items => $_getList(0);
}

class TTable extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TTable', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TTable._() : super();
  factory TTable({
    $core.int? number,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory TTable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTable clone() => TTable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTable copyWith(void Function(TTable) updates) => super.copyWith((message) => updates(message as TTable)) as TTable; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TTable create() => TTable._();
  TTable createEmptyInstance() => create();
  static $pb.PbList<TTable> createRepeated() => $pb.PbList<TTable>();
  @$core.pragma('dart2js:noInline')
  static TTable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTable>(create);
  static TTable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get number => $_getIZ(0);
  @$pb.TagNumber(1)
  set number($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);
}

class TListOfTable extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TListOfTable', createEmptyInstance: create)
    ..pc<TTable>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TTable.create)
    ..hasRequiredFields = false
  ;

  TListOfTable._() : super();
  factory TListOfTable({
    $core.Iterable<TTable>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory TListOfTable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TListOfTable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TListOfTable clone() => TListOfTable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TListOfTable copyWith(void Function(TListOfTable) updates) => super.copyWith((message) => updates(message as TListOfTable)) as TListOfTable; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TListOfTable create() => TListOfTable._();
  TListOfTable createEmptyInstance() => create();
  static $pb.PbList<TListOfTable> createRepeated() => $pb.PbList<TListOfTable>();
  @$core.pragma('dart2js:noInline')
  static TListOfTable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TListOfTable>(create);
  static TListOfTable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TTable> get items => $_getList(0);
}

class RRestaurant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RRestaurant', createEmptyInstance: create)
    ..pc<GWaiter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waiters', $pb.PbFieldType.PM, subBuilder: GWaiter.create)
    ..pc<CChef>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chefs', $pb.PbFieldType.PM, subBuilder: CChef.create)
    ..hasRequiredFields = false
  ;

  RRestaurant._() : super();
  factory RRestaurant({
    $core.Iterable<GWaiter>? waiters,
    $core.Iterable<CChef>? chefs,
  }) {
    final _result = create();
    if (waiters != null) {
      _result.waiters.addAll(waiters);
    }
    if (chefs != null) {
      _result.chefs.addAll(chefs);
    }
    return _result;
  }
  factory RRestaurant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RRestaurant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RRestaurant clone() => RRestaurant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RRestaurant copyWith(void Function(RRestaurant) updates) => super.copyWith((message) => updates(message as RRestaurant)) as RRestaurant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RRestaurant create() => RRestaurant._();
  RRestaurant createEmptyInstance() => create();
  static $pb.PbList<RRestaurant> createRepeated() => $pb.PbList<RRestaurant>();
  @$core.pragma('dart2js:noInline')
  static RRestaurant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RRestaurant>(create);
  static RRestaurant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GWaiter> get waiters => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<CChef> get chefs => $_getList(1);
}

class RListOfRestaurant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RListOfRestaurant', createEmptyInstance: create)
    ..pc<RRestaurant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RRestaurant.create)
    ..hasRequiredFields = false
  ;

  RListOfRestaurant._() : super();
  factory RListOfRestaurant({
    $core.Iterable<RRestaurant>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory RListOfRestaurant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RListOfRestaurant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RListOfRestaurant clone() => RListOfRestaurant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RListOfRestaurant copyWith(void Function(RListOfRestaurant) updates) => super.copyWith((message) => updates(message as RListOfRestaurant)) as RListOfRestaurant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RListOfRestaurant create() => RListOfRestaurant._();
  RListOfRestaurant createEmptyInstance() => create();
  static $pb.PbList<RListOfRestaurant> createRepeated() => $pb.PbList<RListOfRestaurant>();
  @$core.pragma('dart2js:noInline')
  static RListOfRestaurant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RListOfRestaurant>(create);
  static RListOfRestaurant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RRestaurant> get items => $_getList(0);
}

class WCustomer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WCustomer', createEmptyInstance: create)
    ..aOM<RRestaurant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRestaurant', subBuilder: RRestaurant.create)
    ..aOM<CChef>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteChef', subBuilder: CChef.create)
    ..hasRequiredFields = false
  ;

  WCustomer._() : super();
  factory WCustomer({
    RRestaurant? favoriteRestaurant,
    CChef? favoriteChef,
  }) {
    final _result = create();
    if (favoriteRestaurant != null) {
      _result.favoriteRestaurant = favoriteRestaurant;
    }
    if (favoriteChef != null) {
      _result.favoriteChef = favoriteChef;
    }
    return _result;
  }
  factory WCustomer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WCustomer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WCustomer clone() => WCustomer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WCustomer copyWith(void Function(WCustomer) updates) => super.copyWith((message) => updates(message as WCustomer)) as WCustomer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WCustomer create() => WCustomer._();
  WCustomer createEmptyInstance() => create();
  static $pb.PbList<WCustomer> createRepeated() => $pb.PbList<WCustomer>();
  @$core.pragma('dart2js:noInline')
  static WCustomer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WCustomer>(create);
  static WCustomer? _defaultInstance;

  @$pb.TagNumber(1)
  RRestaurant get favoriteRestaurant => $_getN(0);
  @$pb.TagNumber(1)
  set favoriteRestaurant(RRestaurant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFavoriteRestaurant() => $_has(0);
  @$pb.TagNumber(1)
  void clearFavoriteRestaurant() => clearField(1);
  @$pb.TagNumber(1)
  RRestaurant ensureFavoriteRestaurant() => $_ensure(0);

  @$pb.TagNumber(2)
  CChef get favoriteChef => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteChef(CChef v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteChef() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteChef() => clearField(2);
  @$pb.TagNumber(2)
  CChef ensureFavoriteChef() => $_ensure(1);
}

class WListOfCustomer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WListOfCustomer', createEmptyInstance: create)
    ..pc<WCustomer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: WCustomer.create)
    ..hasRequiredFields = false
  ;

  WListOfCustomer._() : super();
  factory WListOfCustomer({
    $core.Iterable<WCustomer>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory WListOfCustomer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WListOfCustomer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WListOfCustomer clone() => WListOfCustomer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WListOfCustomer copyWith(void Function(WListOfCustomer) updates) => super.copyWith((message) => updates(message as WListOfCustomer)) as WListOfCustomer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WListOfCustomer create() => WListOfCustomer._();
  WListOfCustomer createEmptyInstance() => create();
  static $pb.PbList<WListOfCustomer> createRepeated() => $pb.PbList<WListOfCustomer>();
  @$core.pragma('dart2js:noInline')
  static WListOfCustomer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WListOfCustomer>(create);
  static WListOfCustomer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WCustomer> get items => $_getList(0);
}

class NullableAFoodCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NullableAFoodCategory', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasValue')
    ..e<AFoodCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: AFoodCategory.A_FOOD_CATEGORY_VEGETABLES, valueOf: AFoodCategory.valueOf, enumValues: AFoodCategory.values)
    ..hasRequiredFields = false
  ;

  NullableAFoodCategory._() : super();
  factory NullableAFoodCategory({
    $core.bool? hasValue,
    AFoodCategory? value_2,
  }) {
    final _result = create();
    if (hasValue != null) {
      _result.hasValue = hasValue;
    }
    if (value_2 != null) {
      _result.value_2 = value_2;
    }
    return _result;
  }
  factory NullableAFoodCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NullableAFoodCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NullableAFoodCategory clone() => NullableAFoodCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NullableAFoodCategory copyWith(void Function(NullableAFoodCategory) updates) => super.copyWith((message) => updates(message as NullableAFoodCategory)) as NullableAFoodCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NullableAFoodCategory create() => NullableAFoodCategory._();
  NullableAFoodCategory createEmptyInstance() => create();
  static $pb.PbList<NullableAFoodCategory> createRepeated() => $pb.PbList<NullableAFoodCategory>();
  @$core.pragma('dart2js:noInline')
  static NullableAFoodCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NullableAFoodCategory>(create);
  static NullableAFoodCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasValue => $_getBF(0);
  @$pb.TagNumber(1)
  set hasValue($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasValue() => clearField(1);

  @$pb.TagNumber(2)
  AFoodCategory get value_2 => $_getN(1);
  @$pb.TagNumber(2)
  set value_2(AFoodCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue_2() => clearField(2);
}

