///
//  Generated code. Do not modify.
//  source: utensils.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recipe.pb.dart' as $0;
import 'google/protobuf/timestamp.pb.dart' as $7;
import 'google/protobuf/duration.pb.dart' as $6;

import 'utensils.pbenum.dart';
import 'appliance_type.pbenum.dart' as $8;

export 'utensils.pbenum.dart';

class GKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnife', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<GKnifeType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GKnifeType.G_KNIFE_TYPE_CHEFS_KNIFE, valueOf: GKnifeType.valueOf, enumValues: GKnifeType.values)
    ..hasRequiredFields = false
  ;

  GKnife._() : super();
  factory GKnife({
    $core.String? name,
    GKnifeType? type,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory GKnife.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnife.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnife clone() => GKnife()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnife copyWith(void Function(GKnife) updates) => super.copyWith((message) => updates(message as GKnife)) as GKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnife create() => GKnife._();
  GKnife createEmptyInstance() => create();
  static $pb.PbList<GKnife> createRepeated() => $pb.PbList<GKnife>();
  @$core.pragma('dart2js:noInline')
  static GKnife getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnife>(create);
  static GKnife? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  GKnifeType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(GKnifeType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GListOfKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKnife', createEmptyInstance: create)
    ..pc<GKnife>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKnife.create)
    ..hasRequiredFields = false
  ;

  GListOfKnife._() : super();
  factory GListOfKnife({
    $core.Iterable<GKnife>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKnife.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKnife.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKnife clone() => GListOfKnife()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKnife copyWith(void Function(GListOfKnife) updates) => super.copyWith((message) => updates(message as GListOfKnife)) as GListOfKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKnife create() => GListOfKnife._();
  GListOfKnife createEmptyInstance() => create();
  static $pb.PbList<GListOfKnife> createRepeated() => $pb.PbList<GListOfKnife>();
  @$core.pragma('dart2js:noInline')
  static GListOfKnife getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKnife>(create);
  static GListOfKnife? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKnife> get items => $_getList(0);
}

class GGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GGarlicPress', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'machineWashable')
    ..hasRequiredFields = false
  ;

  GGarlicPress._() : super();
  factory GGarlicPress({
    $core.String? name,
    $core.bool? machineWashable,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (machineWashable != null) {
      _result.machineWashable = machineWashable;
    }
    return _result;
  }
  factory GGarlicPress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GGarlicPress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GGarlicPress clone() => GGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GGarlicPress copyWith(void Function(GGarlicPress) updates) => super.copyWith((message) => updates(message as GGarlicPress)) as GGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGarlicPress create() => GGarlicPress._();
  GGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GGarlicPress> createRepeated() => $pb.PbList<GGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GGarlicPress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GGarlicPress>(create);
  static GGarlicPress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get machineWashable => $_getBF(1);
  @$pb.TagNumber(2)
  set machineWashable($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMachineWashable() => $_has(1);
  @$pb.TagNumber(2)
  void clearMachineWashable() => clearField(2);
}

class GListOfGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfGarlicPress', createEmptyInstance: create)
    ..pc<GGarlicPress>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GGarlicPress.create)
    ..hasRequiredFields = false
  ;

  GListOfGarlicPress._() : super();
  factory GListOfGarlicPress({
    $core.Iterable<GGarlicPress>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfGarlicPress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfGarlicPress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfGarlicPress clone() => GListOfGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfGarlicPress copyWith(void Function(GListOfGarlicPress) updates) => super.copyWith((message) => updates(message as GListOfGarlicPress)) as GListOfGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfGarlicPress create() => GListOfGarlicPress._();
  GListOfGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GListOfGarlicPress> createRepeated() => $pb.PbList<GListOfGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GListOfGarlicPress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfGarlicPress>(create);
  static GListOfGarlicPress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GGarlicPress> get items => $_getList(0);
}

class GKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKitchen', createEmptyInstance: create)
    ..pc<$0.GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipeList', $pb.PbFieldType.PM, protoName: 'recipeList', subBuilder: $0.GRecipe.create)
    ..m<$core.String, $0.GRecipe>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipeMap', protoName: 'recipeMap', entryClassName: 'GKitchen.RecipeMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.GRecipe.create)
    ..aOM<$7.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextInspectionDate', protoName: 'nextInspectionDate', subBuilder: $7.Timestamp.create)
    ..hasRequiredFields = false
  ;

  GKitchen._() : super();
  factory GKitchen({
    $core.Iterable<$0.GRecipe>? recipeList,
    $core.Map<$core.String, $0.GRecipe>? recipeMap,
    $7.Timestamp? nextInspectionDate,
  }) {
    final _result = create();
    if (recipeList != null) {
      _result.recipeList.addAll(recipeList);
    }
    if (recipeMap != null) {
      _result.recipeMap.addAll(recipeMap);
    }
    if (nextInspectionDate != null) {
      _result.nextInspectionDate = nextInspectionDate;
    }
    return _result;
  }
  factory GKitchen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKitchen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKitchen clone() => GKitchen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKitchen copyWith(void Function(GKitchen) updates) => super.copyWith((message) => updates(message as GKitchen)) as GKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKitchen create() => GKitchen._();
  GKitchen createEmptyInstance() => create();
  static $pb.PbList<GKitchen> createRepeated() => $pb.PbList<GKitchen>();
  @$core.pragma('dart2js:noInline')
  static GKitchen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKitchen>(create);
  static GKitchen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.GRecipe> get recipeList => $_getList(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.GRecipe> get recipeMap => $_getMap(1);

  @$pb.TagNumber(3)
  $7.Timestamp get nextInspectionDate => $_getN(2);
  @$pb.TagNumber(3)
  set nextInspectionDate($7.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNextInspectionDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextInspectionDate() => clearField(3);
  @$pb.TagNumber(3)
  $7.Timestamp ensureNextInspectionDate() => $_ensure(2);
}

class GListOfKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKitchen', createEmptyInstance: create)
    ..pc<GKitchen>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKitchen.create)
    ..hasRequiredFields = false
  ;

  GListOfKitchen._() : super();
  factory GListOfKitchen({
    $core.Iterable<GKitchen>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKitchen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKitchen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKitchen clone() => GListOfKitchen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKitchen copyWith(void Function(GListOfKitchen) updates) => super.copyWith((message) => updates(message as GListOfKitchen)) as GListOfKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKitchen create() => GListOfKitchen._();
  GListOfKitchen createEmptyInstance() => create();
  static $pb.PbList<GListOfKitchen> createRepeated() => $pb.PbList<GListOfKitchen>();
  @$core.pragma('dart2js:noInline')
  static GListOfKitchen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKitchen>(create);
  static GListOfKitchen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKitchen> get items => $_getList(0);
}

class GChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GChef', createEmptyInstance: create)
    ..aOM<$0.GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipe', subBuilder: $0.GRecipe.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipeHasValue')
    ..aOM<GKnife>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnifeHasValue')
    ..e<$8.GApplianceType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteApplianceType', $pb.PbFieldType.OE, defaultOrMaker: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values)
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteWords')
    ..aOM<$7.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthdate', subBuilder: $7.Timestamp.create)
    ..aOM<$6.Duration>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shelfLife', subBuilder: $6.Duration.create)
    ..hasRequiredFields = false
  ;

  GChef._() : super();
  factory GChef({
    $0.GRecipe? favoriteRecipe,
    $core.bool? favoriteRecipeHasValue,
    GKnife? favoriteKnife,
    $core.bool? favoriteKnifeHasValue,
    $8.GApplianceType? favoriteApplianceType,
    $core.Iterable<$core.String>? favoriteWords,
    $7.Timestamp? birthdate,
    $6.Duration? shelfLife,
  }) {
    final _result = create();
    if (favoriteRecipe != null) {
      _result.favoriteRecipe = favoriteRecipe;
    }
    if (favoriteRecipeHasValue != null) {
      _result.favoriteRecipeHasValue = favoriteRecipeHasValue;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    if (favoriteKnifeHasValue != null) {
      _result.favoriteKnifeHasValue = favoriteKnifeHasValue;
    }
    if (favoriteApplianceType != null) {
      _result.favoriteApplianceType = favoriteApplianceType;
    }
    if (favoriteWords != null) {
      _result.favoriteWords.addAll(favoriteWords);
    }
    if (birthdate != null) {
      _result.birthdate = birthdate;
    }
    if (shelfLife != null) {
      _result.shelfLife = shelfLife;
    }
    return _result;
  }
  factory GChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GChef clone() => GChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GChef copyWith(void Function(GChef) updates) => super.copyWith((message) => updates(message as GChef)) as GChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GChef create() => GChef._();
  GChef createEmptyInstance() => create();
  static $pb.PbList<GChef> createRepeated() => $pb.PbList<GChef>();
  @$core.pragma('dart2js:noInline')
  static GChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GChef>(create);
  static GChef? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GRecipe get favoriteRecipe => $_getN(0);
  @$pb.TagNumber(1)
  set favoriteRecipe($0.GRecipe v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFavoriteRecipe() => $_has(0);
  @$pb.TagNumber(1)
  void clearFavoriteRecipe() => clearField(1);
  @$pb.TagNumber(1)
  $0.GRecipe ensureFavoriteRecipe() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get favoriteRecipeHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set favoriteRecipeHasValue($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteRecipeHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteRecipeHasValue() => clearField(2);

  @$pb.TagNumber(3)
  GKnife get favoriteKnife => $_getN(2);
  @$pb.TagNumber(3)
  set favoriteKnife(GKnife v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFavoriteKnife() => $_has(2);
  @$pb.TagNumber(3)
  void clearFavoriteKnife() => clearField(3);
  @$pb.TagNumber(3)
  GKnife ensureFavoriteKnife() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get favoriteKnifeHasValue => $_getBF(3);
  @$pb.TagNumber(4)
  set favoriteKnifeHasValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFavoriteKnifeHasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearFavoriteKnifeHasValue() => clearField(4);

  @$pb.TagNumber(5)
  $8.GApplianceType get favoriteApplianceType => $_getN(4);
  @$pb.TagNumber(5)
  set favoriteApplianceType($8.GApplianceType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFavoriteApplianceType() => $_has(4);
  @$pb.TagNumber(5)
  void clearFavoriteApplianceType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get favoriteWords => $_getList(5);

  @$pb.TagNumber(7)
  $7.Timestamp get birthdate => $_getN(6);
  @$pb.TagNumber(7)
  set birthdate($7.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBirthdate() => $_has(6);
  @$pb.TagNumber(7)
  void clearBirthdate() => clearField(7);
  @$pb.TagNumber(7)
  $7.Timestamp ensureBirthdate() => $_ensure(6);

  @$pb.TagNumber(8)
  $6.Duration get shelfLife => $_getN(7);
  @$pb.TagNumber(8)
  set shelfLife($6.Duration v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasShelfLife() => $_has(7);
  @$pb.TagNumber(8)
  void clearShelfLife() => clearField(8);
  @$pb.TagNumber(8)
  $6.Duration ensureShelfLife() => $_ensure(7);
}

class GListOfChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfChef', createEmptyInstance: create)
    ..pc<GChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GChef.create)
    ..hasRequiredFields = false
  ;

  GListOfChef._() : super();
  factory GListOfChef({
    $core.Iterable<GChef>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfChef clone() => GListOfChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfChef copyWith(void Function(GListOfChef) updates) => super.copyWith((message) => updates(message as GListOfChef)) as GListOfChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfChef create() => GListOfChef._();
  GListOfChef createEmptyInstance() => create();
  static $pb.PbList<GListOfChef> createRepeated() => $pb.PbList<GListOfChef>();
  @$core.pragma('dart2js:noInline')
  static GListOfChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfChef>(create);
  static GListOfChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GChef> get items => $_getList(0);
}

class GSousChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GSousChef', createEmptyInstance: create)
    ..aOM<$0.GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipe', subBuilder: $0.GRecipe.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipeHasValue')
    ..aOM<GKnife>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnifeHasValue')
    ..e<$8.GApplianceType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteApplianceType', $pb.PbFieldType.OE, defaultOrMaker: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values)
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteWords')
    ..aOM<$7.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthdate', subBuilder: $7.Timestamp.create)
    ..aOM<$6.Duration>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shelfLife', subBuilder: $6.Duration.create)
    ..hasRequiredFields = false
  ;

  GSousChef._() : super();
  factory GSousChef({
    $0.GRecipe? favoriteRecipe,
    $core.bool? favoriteRecipeHasValue,
    GKnife? favoriteKnife,
    $core.bool? favoriteKnifeHasValue,
    $8.GApplianceType? favoriteApplianceType,
    $core.Iterable<$core.String>? favoriteWords,
    $7.Timestamp? birthdate,
    $6.Duration? shelfLife,
  }) {
    final _result = create();
    if (favoriteRecipe != null) {
      _result.favoriteRecipe = favoriteRecipe;
    }
    if (favoriteRecipeHasValue != null) {
      _result.favoriteRecipeHasValue = favoriteRecipeHasValue;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    if (favoriteKnifeHasValue != null) {
      _result.favoriteKnifeHasValue = favoriteKnifeHasValue;
    }
    if (favoriteApplianceType != null) {
      _result.favoriteApplianceType = favoriteApplianceType;
    }
    if (favoriteWords != null) {
      _result.favoriteWords.addAll(favoriteWords);
    }
    if (birthdate != null) {
      _result.birthdate = birthdate;
    }
    if (shelfLife != null) {
      _result.shelfLife = shelfLife;
    }
    return _result;
  }
  factory GSousChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GSousChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GSousChef clone() => GSousChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GSousChef copyWith(void Function(GSousChef) updates) => super.copyWith((message) => updates(message as GSousChef)) as GSousChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSousChef create() => GSousChef._();
  GSousChef createEmptyInstance() => create();
  static $pb.PbList<GSousChef> createRepeated() => $pb.PbList<GSousChef>();
  @$core.pragma('dart2js:noInline')
  static GSousChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSousChef>(create);
  static GSousChef? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GRecipe get favoriteRecipe => $_getN(0);
  @$pb.TagNumber(1)
  set favoriteRecipe($0.GRecipe v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFavoriteRecipe() => $_has(0);
  @$pb.TagNumber(1)
  void clearFavoriteRecipe() => clearField(1);
  @$pb.TagNumber(1)
  $0.GRecipe ensureFavoriteRecipe() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get favoriteRecipeHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set favoriteRecipeHasValue($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteRecipeHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteRecipeHasValue() => clearField(2);

  @$pb.TagNumber(3)
  GKnife get favoriteKnife => $_getN(2);
  @$pb.TagNumber(3)
  set favoriteKnife(GKnife v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFavoriteKnife() => $_has(2);
  @$pb.TagNumber(3)
  void clearFavoriteKnife() => clearField(3);
  @$pb.TagNumber(3)
  GKnife ensureFavoriteKnife() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get favoriteKnifeHasValue => $_getBF(3);
  @$pb.TagNumber(4)
  set favoriteKnifeHasValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFavoriteKnifeHasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearFavoriteKnifeHasValue() => clearField(4);

  @$pb.TagNumber(5)
  $8.GApplianceType get favoriteApplianceType => $_getN(4);
  @$pb.TagNumber(5)
  set favoriteApplianceType($8.GApplianceType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFavoriteApplianceType() => $_has(4);
  @$pb.TagNumber(5)
  void clearFavoriteApplianceType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get favoriteWords => $_getList(5);

  @$pb.TagNumber(7)
  $7.Timestamp get birthdate => $_getN(6);
  @$pb.TagNumber(7)
  set birthdate($7.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBirthdate() => $_has(6);
  @$pb.TagNumber(7)
  void clearBirthdate() => clearField(7);
  @$pb.TagNumber(7)
  $7.Timestamp ensureBirthdate() => $_ensure(6);

  @$pb.TagNumber(8)
  $6.Duration get shelfLife => $_getN(7);
  @$pb.TagNumber(8)
  set shelfLife($6.Duration v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasShelfLife() => $_has(7);
  @$pb.TagNumber(8)
  void clearShelfLife() => clearField(8);
  @$pb.TagNumber(8)
  $6.Duration ensureShelfLife() => $_ensure(7);
}

class GListOfSousChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfSousChef', createEmptyInstance: create)
    ..pc<GSousChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GSousChef.create)
    ..hasRequiredFields = false
  ;

  GListOfSousChef._() : super();
  factory GListOfSousChef({
    $core.Iterable<GSousChef>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfSousChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfSousChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfSousChef clone() => GListOfSousChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfSousChef copyWith(void Function(GListOfSousChef) updates) => super.copyWith((message) => updates(message as GListOfSousChef)) as GListOfSousChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfSousChef create() => GListOfSousChef._();
  GListOfSousChef createEmptyInstance() => create();
  static $pb.PbList<GListOfSousChef> createRepeated() => $pb.PbList<GListOfSousChef>();
  @$core.pragma('dart2js:noInline')
  static GListOfSousChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfSousChef>(create);
  static GListOfSousChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GSousChef> get items => $_getList(0);
}

class GKnifeMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnifeMaster', createEmptyInstance: create)
    ..aOM<$0.GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipe', subBuilder: $0.GRecipe.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipeHasValue')
    ..e<$8.GApplianceType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteApplianceType', $pb.PbFieldType.OE, defaultOrMaker: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteWords')
    ..aOM<$7.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthdate', subBuilder: $7.Timestamp.create)
    ..aOM<$6.Duration>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shelfLife', subBuilder: $6.Duration.create)
    ..aOM<GKnife>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..hasRequiredFields = false
  ;

  GKnifeMaster._() : super();
  factory GKnifeMaster({
    $0.GRecipe? favoriteRecipe,
    $core.bool? favoriteRecipeHasValue,
    $8.GApplianceType? favoriteApplianceType,
    $core.Iterable<$core.String>? favoriteWords,
    $7.Timestamp? birthdate,
    $6.Duration? shelfLife,
    GKnife? favoriteKnife,
  }) {
    final _result = create();
    if (favoriteRecipe != null) {
      _result.favoriteRecipe = favoriteRecipe;
    }
    if (favoriteRecipeHasValue != null) {
      _result.favoriteRecipeHasValue = favoriteRecipeHasValue;
    }
    if (favoriteApplianceType != null) {
      _result.favoriteApplianceType = favoriteApplianceType;
    }
    if (favoriteWords != null) {
      _result.favoriteWords.addAll(favoriteWords);
    }
    if (birthdate != null) {
      _result.birthdate = birthdate;
    }
    if (shelfLife != null) {
      _result.shelfLife = shelfLife;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    return _result;
  }
  factory GKnifeMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnifeMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnifeMaster clone() => GKnifeMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnifeMaster copyWith(void Function(GKnifeMaster) updates) => super.copyWith((message) => updates(message as GKnifeMaster)) as GKnifeMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnifeMaster create() => GKnifeMaster._();
  GKnifeMaster createEmptyInstance() => create();
  static $pb.PbList<GKnifeMaster> createRepeated() => $pb.PbList<GKnifeMaster>();
  @$core.pragma('dart2js:noInline')
  static GKnifeMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnifeMaster>(create);
  static GKnifeMaster? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GRecipe get favoriteRecipe => $_getN(0);
  @$pb.TagNumber(1)
  set favoriteRecipe($0.GRecipe v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFavoriteRecipe() => $_has(0);
  @$pb.TagNumber(1)
  void clearFavoriteRecipe() => clearField(1);
  @$pb.TagNumber(1)
  $0.GRecipe ensureFavoriteRecipe() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get favoriteRecipeHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set favoriteRecipeHasValue($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteRecipeHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteRecipeHasValue() => clearField(2);

  @$pb.TagNumber(3)
  $8.GApplianceType get favoriteApplianceType => $_getN(2);
  @$pb.TagNumber(3)
  set favoriteApplianceType($8.GApplianceType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFavoriteApplianceType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFavoriteApplianceType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get favoriteWords => $_getList(3);

  @$pb.TagNumber(5)
  $7.Timestamp get birthdate => $_getN(4);
  @$pb.TagNumber(5)
  set birthdate($7.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBirthdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearBirthdate() => clearField(5);
  @$pb.TagNumber(5)
  $7.Timestamp ensureBirthdate() => $_ensure(4);

  @$pb.TagNumber(6)
  $6.Duration get shelfLife => $_getN(5);
  @$pb.TagNumber(6)
  set shelfLife($6.Duration v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasShelfLife() => $_has(5);
  @$pb.TagNumber(6)
  void clearShelfLife() => clearField(6);
  @$pb.TagNumber(6)
  $6.Duration ensureShelfLife() => $_ensure(5);

  @$pb.TagNumber(8)
  GKnife get favoriteKnife => $_getN(6);
  @$pb.TagNumber(8)
  set favoriteKnife(GKnife v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFavoriteKnife() => $_has(6);
  @$pb.TagNumber(8)
  void clearFavoriteKnife() => clearField(8);
  @$pb.TagNumber(8)
  GKnife ensureFavoriteKnife() => $_ensure(6);
}

class GListOfKnifeMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKnifeMaster', createEmptyInstance: create)
    ..pc<GKnifeMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKnifeMaster.create)
    ..hasRequiredFields = false
  ;

  GListOfKnifeMaster._() : super();
  factory GListOfKnifeMaster({
    $core.Iterable<GKnifeMaster>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKnifeMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKnifeMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKnifeMaster clone() => GListOfKnifeMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKnifeMaster copyWith(void Function(GListOfKnifeMaster) updates) => super.copyWith((message) => updates(message as GListOfKnifeMaster)) as GListOfKnifeMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKnifeMaster create() => GListOfKnifeMaster._();
  GListOfKnifeMaster createEmptyInstance() => create();
  static $pb.PbList<GListOfKnifeMaster> createRepeated() => $pb.PbList<GListOfKnifeMaster>();
  @$core.pragma('dart2js:noInline')
  static GListOfKnifeMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKnifeMaster>(create);
  static GListOfKnifeMaster? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKnifeMaster> get items => $_getList(0);
}

class GInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GInventory', createEmptyInstance: create)
    ..m<$core.String, $core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfThings', entryClassName: 'GInventory.NumberOfThingsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O3)
    ..m<$core.String, $0.GRecipe>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipesByName', entryClassName: 'GInventory.RecipesByNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.GRecipe.create)
    ..aOM<$6.Duration>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeSpan', subBuilder: $6.Duration.create)
    ..hasRequiredFields = false
  ;

  GInventory._() : super();
  factory GInventory({
    $core.Map<$core.String, $core.int>? numberOfThings,
    $core.Map<$core.String, $0.GRecipe>? recipesByName,
    $6.Duration? timeSpan,
  }) {
    final _result = create();
    if (numberOfThings != null) {
      _result.numberOfThings.addAll(numberOfThings);
    }
    if (recipesByName != null) {
      _result.recipesByName.addAll(recipesByName);
    }
    if (timeSpan != null) {
      _result.timeSpan = timeSpan;
    }
    return _result;
  }
  factory GInventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GInventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GInventory clone() => GInventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GInventory copyWith(void Function(GInventory) updates) => super.copyWith((message) => updates(message as GInventory)) as GInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GInventory create() => GInventory._();
  GInventory createEmptyInstance() => create();
  static $pb.PbList<GInventory> createRepeated() => $pb.PbList<GInventory>();
  @$core.pragma('dart2js:noInline')
  static GInventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GInventory>(create);
  static GInventory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.int> get numberOfThings => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.GRecipe> get recipesByName => $_getMap(1);

  @$pb.TagNumber(3)
  $6.Duration get timeSpan => $_getN(2);
  @$pb.TagNumber(3)
  set timeSpan($6.Duration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeSpan() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeSpan() => clearField(3);
  @$pb.TagNumber(3)
  $6.Duration ensureTimeSpan() => $_ensure(2);
}

class GListOfInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfInventory', createEmptyInstance: create)
    ..pc<GInventory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GInventory.create)
    ..hasRequiredFields = false
  ;

  GListOfInventory._() : super();
  factory GListOfInventory({
    $core.Iterable<GInventory>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfInventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfInventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfInventory clone() => GListOfInventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfInventory copyWith(void Function(GListOfInventory) updates) => super.copyWith((message) => updates(message as GListOfInventory)) as GListOfInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfInventory create() => GListOfInventory._();
  GListOfInventory createEmptyInstance() => create();
  static $pb.PbList<GListOfInventory> createRepeated() => $pb.PbList<GListOfInventory>();
  @$core.pragma('dart2js:noInline')
  static GListOfInventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfInventory>(create);
  static GListOfInventory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GInventory> get items => $_getList(0);
}

class GPrecisionSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GPrecisionSubject', createEmptyInstance: create)
    ..aOM<$7.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateProperty', subBuilder: $7.Timestamp.create)
    ..aOM<$6.Duration>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationProperty', subBuilder: $6.Duration.create)
    ..hasRequiredFields = false
  ;

  GPrecisionSubject._() : super();
  factory GPrecisionSubject({
    $7.Timestamp? dateProperty,
    $6.Duration? durationProperty,
  }) {
    final _result = create();
    if (dateProperty != null) {
      _result.dateProperty = dateProperty;
    }
    if (durationProperty != null) {
      _result.durationProperty = durationProperty;
    }
    return _result;
  }
  factory GPrecisionSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GPrecisionSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GPrecisionSubject clone() => GPrecisionSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GPrecisionSubject copyWith(void Function(GPrecisionSubject) updates) => super.copyWith((message) => updates(message as GPrecisionSubject)) as GPrecisionSubject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPrecisionSubject create() => GPrecisionSubject._();
  GPrecisionSubject createEmptyInstance() => create();
  static $pb.PbList<GPrecisionSubject> createRepeated() => $pb.PbList<GPrecisionSubject>();
  @$core.pragma('dart2js:noInline')
  static GPrecisionSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GPrecisionSubject>(create);
  static GPrecisionSubject? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Timestamp get dateProperty => $_getN(0);
  @$pb.TagNumber(1)
  set dateProperty($7.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDateProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateProperty() => clearField(1);
  @$pb.TagNumber(1)
  $7.Timestamp ensureDateProperty() => $_ensure(0);

  @$pb.TagNumber(2)
  $6.Duration get durationProperty => $_getN(1);
  @$pb.TagNumber(2)
  set durationProperty($6.Duration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDurationProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationProperty() => clearField(2);
  @$pb.TagNumber(2)
  $6.Duration ensureDurationProperty() => $_ensure(1);
}

class GListOfPrecisionSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfPrecisionSubject', createEmptyInstance: create)
    ..pc<GPrecisionSubject>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GPrecisionSubject.create)
    ..hasRequiredFields = false
  ;

  GListOfPrecisionSubject._() : super();
  factory GListOfPrecisionSubject({
    $core.Iterable<GPrecisionSubject>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfPrecisionSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfPrecisionSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfPrecisionSubject clone() => GListOfPrecisionSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfPrecisionSubject copyWith(void Function(GListOfPrecisionSubject) updates) => super.copyWith((message) => updates(message as GListOfPrecisionSubject)) as GListOfPrecisionSubject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfPrecisionSubject create() => GListOfPrecisionSubject._();
  GListOfPrecisionSubject createEmptyInstance() => create();
  static $pb.PbList<GListOfPrecisionSubject> createRepeated() => $pb.PbList<GListOfPrecisionSubject>();
  @$core.pragma('dart2js:noInline')
  static GListOfPrecisionSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfPrecisionSubject>(create);
  static GListOfPrecisionSubject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GPrecisionSubject> get items => $_getList(0);
}

class NullableGKnifeType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NullableGKnifeType', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasValue')
    ..e<GKnifeType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GKnifeType.G_KNIFE_TYPE_CHEFS_KNIFE, valueOf: GKnifeType.valueOf, enumValues: GKnifeType.values)
    ..hasRequiredFields = false
  ;

  NullableGKnifeType._() : super();
  factory NullableGKnifeType({
    $core.bool? hasValue,
    GKnifeType? value_2,
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
  factory NullableGKnifeType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NullableGKnifeType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NullableGKnifeType clone() => NullableGKnifeType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NullableGKnifeType copyWith(void Function(NullableGKnifeType) updates) => super.copyWith((message) => updates(message as NullableGKnifeType)) as NullableGKnifeType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NullableGKnifeType create() => NullableGKnifeType._();
  NullableGKnifeType createEmptyInstance() => create();
  static $pb.PbList<NullableGKnifeType> createRepeated() => $pb.PbList<NullableGKnifeType>();
  @$core.pragma('dart2js:noInline')
  static NullableGKnifeType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NullableGKnifeType>(create);
  static NullableGKnifeType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasValue => $_getBF(0);
  @$pb.TagNumber(1)
  set hasValue($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasValue() => clearField(1);

  @$pb.TagNumber(2)
  GKnifeType get value_2 => $_getN(1);
  @$pb.TagNumber(2)
  set value_2(GKnifeType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue_2() => clearField(2);
}

class NullableGChefType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NullableGChefType', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasValue')
    ..e<GChefType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GChefType.G_CHEF_TYPE_SENIOR_CHEF, valueOf: GChefType.valueOf, enumValues: GChefType.values)
    ..hasRequiredFields = false
  ;

  NullableGChefType._() : super();
  factory NullableGChefType({
    $core.bool? hasValue,
    GChefType? value_2,
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
  factory NullableGChefType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NullableGChefType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NullableGChefType clone() => NullableGChefType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NullableGChefType copyWith(void Function(NullableGChefType) updates) => super.copyWith((message) => updates(message as NullableGChefType)) as NullableGChefType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NullableGChefType create() => NullableGChefType._();
  NullableGChefType createEmptyInstance() => create();
  static $pb.PbList<NullableGChefType> createRepeated() => $pb.PbList<NullableGChefType>();
  @$core.pragma('dart2js:noInline')
  static NullableGChefType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NullableGChefType>(create);
  static NullableGChefType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasValue => $_getBF(0);
  @$pb.TagNumber(1)
  set hasValue($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasValue() => clearField(1);

  @$pb.TagNumber(2)
  GChefType get value_2 => $_getN(1);
  @$pb.TagNumber(2)
  set value_2(GChefType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue_2() => clearField(2);
}

