///
//  Generated code. Do not modify.
//  source: recipe.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $4;
import 'category.pb.dart' as $3;
import 'ingredient.pb.dart' as $9;
import 'google/protobuf/timestamp.pb.dart' as $7;
import 'google/protobuf/duration.pb.dart' as $6;

import 'appliance_type.pbenum.dart' as $8;

class GRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipe', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOM<$4.StringValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: $4.StringValue.create)
    ..aOM<$3.GCategory>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', subBuilder: $3.GCategory.create)
    ..pc<$9.GIngredient>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ingredients', $pb.PbFieldType.PM, subBuilder: $9.GIngredient.create)
    ..aOM<$7.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishDate', subBuilder: $7.Timestamp.create)
    ..aOM<$7.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryDate', subBuilder: $7.Timestamp.create)
    ..aOM<$6.Duration>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preparationDuration', subBuilder: $6.Duration.create)
    ..aOM<$6.Duration>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalDuration', subBuilder: $6.Duration.create)
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPublished')
    ..aOM<$4.BoolValue>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requiresRobot', subBuilder: $4.BoolValue.create)
    ..aOM<$4.DoubleValue>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grossWeight', subBuilder: $4.DoubleValue.create)
    ..aOM<$4.DoubleValue>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'netWeight', subBuilder: $4.DoubleValue.create)
    ..e<$8.GApplianceType>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainApplianceType', $pb.PbFieldType.OE, defaultOrMaker: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values)
    ..e<$8.GApplianceType>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryApplianceType', $pb.PbFieldType.OE, defaultOrMaker: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values)
    ..aOB(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryApplianceTypeHasValue')
    ..pPS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..pPS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraTags')
    ..aOB(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraTagsHasValue')
    ..hasRequiredFields = false
  ;

  GRecipe._() : super();
  factory GRecipe({
    $core.String? title,
    $4.StringValue? description,
    $3.GCategory? category,
    $core.Iterable<$9.GIngredient>? ingredients,
    $7.Timestamp? publishDate,
    $7.Timestamp? expiryDate,
    $6.Duration? preparationDuration,
    $6.Duration? totalDuration,
    $core.bool? isPublished,
    $4.BoolValue? requiresRobot,
    $4.DoubleValue? grossWeight,
    $4.DoubleValue? netWeight,
    $8.GApplianceType? mainApplianceType,
    $8.GApplianceType? secondaryApplianceType,
    $core.bool? secondaryApplianceTypeHasValue,
    $core.Iterable<$core.String>? tags,
    $core.Iterable<$core.String>? extraTags,
    $core.bool? extraTagsHasValue,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (category != null) {
      _result.category = category;
    }
    if (ingredients != null) {
      _result.ingredients.addAll(ingredients);
    }
    if (publishDate != null) {
      _result.publishDate = publishDate;
    }
    if (expiryDate != null) {
      _result.expiryDate = expiryDate;
    }
    if (preparationDuration != null) {
      _result.preparationDuration = preparationDuration;
    }
    if (totalDuration != null) {
      _result.totalDuration = totalDuration;
    }
    if (isPublished != null) {
      _result.isPublished = isPublished;
    }
    if (requiresRobot != null) {
      _result.requiresRobot = requiresRobot;
    }
    if (grossWeight != null) {
      _result.grossWeight = grossWeight;
    }
    if (netWeight != null) {
      _result.netWeight = netWeight;
    }
    if (mainApplianceType != null) {
      _result.mainApplianceType = mainApplianceType;
    }
    if (secondaryApplianceType != null) {
      _result.secondaryApplianceType = secondaryApplianceType;
    }
    if (secondaryApplianceTypeHasValue != null) {
      _result.secondaryApplianceTypeHasValue = secondaryApplianceTypeHasValue;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (extraTags != null) {
      _result.extraTags.addAll(extraTags);
    }
    if (extraTagsHasValue != null) {
      _result.extraTagsHasValue = extraTagsHasValue;
    }
    return _result;
  }
  factory GRecipe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRecipe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRecipe clone() => GRecipe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRecipe copyWith(void Function(GRecipe) updates) => super.copyWith((message) => updates(message as GRecipe)) as GRecipe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRecipe create() => GRecipe._();
  GRecipe createEmptyInstance() => create();
  static $pb.PbList<GRecipe> createRepeated() => $pb.PbList<GRecipe>();
  @$core.pragma('dart2js:noInline')
  static GRecipe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRecipe>(create);
  static GRecipe? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $4.StringValue get description => $_getN(1);
  @$pb.TagNumber(2)
  set description($4.StringValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
  @$pb.TagNumber(2)
  $4.StringValue ensureDescription() => $_ensure(1);

  @$pb.TagNumber(4)
  $3.GCategory get category => $_getN(2);
  @$pb.TagNumber(4)
  set category($3.GCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);
  @$pb.TagNumber(4)
  $3.GCategory ensureCategory() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.List<$9.GIngredient> get ingredients => $_getList(3);

  @$pb.TagNumber(6)
  $7.Timestamp get publishDate => $_getN(4);
  @$pb.TagNumber(6)
  set publishDate($7.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublishDate() => $_has(4);
  @$pb.TagNumber(6)
  void clearPublishDate() => clearField(6);
  @$pb.TagNumber(6)
  $7.Timestamp ensurePublishDate() => $_ensure(4);

  @$pb.TagNumber(7)
  $7.Timestamp get expiryDate => $_getN(5);
  @$pb.TagNumber(7)
  set expiryDate($7.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpiryDate() => $_has(5);
  @$pb.TagNumber(7)
  void clearExpiryDate() => clearField(7);
  @$pb.TagNumber(7)
  $7.Timestamp ensureExpiryDate() => $_ensure(5);

  @$pb.TagNumber(9)
  $6.Duration get preparationDuration => $_getN(6);
  @$pb.TagNumber(9)
  set preparationDuration($6.Duration v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasPreparationDuration() => $_has(6);
  @$pb.TagNumber(9)
  void clearPreparationDuration() => clearField(9);
  @$pb.TagNumber(9)
  $6.Duration ensurePreparationDuration() => $_ensure(6);

  @$pb.TagNumber(10)
  $6.Duration get totalDuration => $_getN(7);
  @$pb.TagNumber(10)
  set totalDuration($6.Duration v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTotalDuration() => $_has(7);
  @$pb.TagNumber(10)
  void clearTotalDuration() => clearField(10);
  @$pb.TagNumber(10)
  $6.Duration ensureTotalDuration() => $_ensure(7);

  @$pb.TagNumber(12)
  $core.bool get isPublished => $_getBF(8);
  @$pb.TagNumber(12)
  set isPublished($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsPublished() => $_has(8);
  @$pb.TagNumber(12)
  void clearIsPublished() => clearField(12);

  @$pb.TagNumber(13)
  $4.BoolValue get requiresRobot => $_getN(9);
  @$pb.TagNumber(13)
  set requiresRobot($4.BoolValue v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasRequiresRobot() => $_has(9);
  @$pb.TagNumber(13)
  void clearRequiresRobot() => clearField(13);
  @$pb.TagNumber(13)
  $4.BoolValue ensureRequiresRobot() => $_ensure(9);

  @$pb.TagNumber(15)
  $4.DoubleValue get grossWeight => $_getN(10);
  @$pb.TagNumber(15)
  set grossWeight($4.DoubleValue v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasGrossWeight() => $_has(10);
  @$pb.TagNumber(15)
  void clearGrossWeight() => clearField(15);
  @$pb.TagNumber(15)
  $4.DoubleValue ensureGrossWeight() => $_ensure(10);

  @$pb.TagNumber(17)
  $4.DoubleValue get netWeight => $_getN(11);
  @$pb.TagNumber(17)
  set netWeight($4.DoubleValue v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasNetWeight() => $_has(11);
  @$pb.TagNumber(17)
  void clearNetWeight() => clearField(17);
  @$pb.TagNumber(17)
  $4.DoubleValue ensureNetWeight() => $_ensure(11);

  @$pb.TagNumber(19)
  $8.GApplianceType get mainApplianceType => $_getN(12);
  @$pb.TagNumber(19)
  set mainApplianceType($8.GApplianceType v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasMainApplianceType() => $_has(12);
  @$pb.TagNumber(19)
  void clearMainApplianceType() => clearField(19);

  @$pb.TagNumber(20)
  $8.GApplianceType get secondaryApplianceType => $_getN(13);
  @$pb.TagNumber(20)
  set secondaryApplianceType($8.GApplianceType v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasSecondaryApplianceType() => $_has(13);
  @$pb.TagNumber(20)
  void clearSecondaryApplianceType() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get secondaryApplianceTypeHasValue => $_getBF(14);
  @$pb.TagNumber(21)
  set secondaryApplianceTypeHasValue($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(21)
  $core.bool hasSecondaryApplianceTypeHasValue() => $_has(14);
  @$pb.TagNumber(21)
  void clearSecondaryApplianceTypeHasValue() => clearField(21);

  @$pb.TagNumber(22)
  $core.List<$core.String> get tags => $_getList(15);

  @$pb.TagNumber(23)
  $core.List<$core.String> get extraTags => $_getList(16);

  @$pb.TagNumber(24)
  $core.bool get extraTagsHasValue => $_getBF(17);
  @$pb.TagNumber(24)
  set extraTagsHasValue($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(24)
  $core.bool hasExtraTagsHasValue() => $_has(17);
  @$pb.TagNumber(24)
  void clearExtraTagsHasValue() => clearField(24);
}

class GListOfRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfRecipe', createEmptyInstance: create)
    ..pc<GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..hasRequiredFields = false
  ;

  GListOfRecipe._() : super();
  factory GListOfRecipe({
    $core.Iterable<GRecipe>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfRecipe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfRecipe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfRecipe clone() => GListOfRecipe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfRecipe copyWith(void Function(GListOfRecipe) updates) => super.copyWith((message) => updates(message as GListOfRecipe)) as GListOfRecipe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfRecipe create() => GListOfRecipe._();
  GListOfRecipe createEmptyInstance() => create();
  static $pb.PbList<GListOfRecipe> createRepeated() => $pb.PbList<GListOfRecipe>();
  @$core.pragma('dart2js:noInline')
  static GListOfRecipe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfRecipe>(create);
  static GListOfRecipe? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRecipe> get items => $_getList(0);
}

