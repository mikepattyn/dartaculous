///
//  Generated code. Do not modify.
//  source: ingredient.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/duration.pb.dart' as $6;
import 'component.pb.dart' as $5;

class GIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GIngredient', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OY)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'precision', $pb.PbFieldType.OD)
    ..aOM<$6.Duration>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cookingDuration', subBuilder: $6.Duration.create)
    ..aOM<$5.GComponent>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainComponent', subBuilder: $5.GComponent.create)
    ..pc<$5.GComponent>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherComponents', $pb.PbFieldType.PM, subBuilder: $5.GComponent.create)
    ..aOM<$5.GComponent>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alternativeComponent', subBuilder: $5.GComponent.create)
    ..pc<$5.GComponent>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryComponents', $pb.PbFieldType.PM, subBuilder: $5.GComponent.create)
    ..hasRequiredFields = false
  ;

  GIngredient._() : super();
  factory GIngredient({
    $core.String? description,
    $core.List<$core.int>? quantity,
    $core.double? precision,
    $6.Duration? cookingDuration,
    $5.GComponent? mainComponent,
    $core.Iterable<$5.GComponent>? otherComponents,
    $5.GComponent? alternativeComponent,
    $core.Iterable<$5.GComponent>? secondaryComponents,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (precision != null) {
      _result.precision = precision;
    }
    if (cookingDuration != null) {
      _result.cookingDuration = cookingDuration;
    }
    if (mainComponent != null) {
      _result.mainComponent = mainComponent;
    }
    if (otherComponents != null) {
      _result.otherComponents.addAll(otherComponents);
    }
    if (alternativeComponent != null) {
      _result.alternativeComponent = alternativeComponent;
    }
    if (secondaryComponents != null) {
      _result.secondaryComponents.addAll(secondaryComponents);
    }
    return _result;
  }
  factory GIngredient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GIngredient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GIngredient clone() => GIngredient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GIngredient copyWith(void Function(GIngredient) updates) => super.copyWith((message) => updates(message as GIngredient)) as GIngredient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GIngredient create() => GIngredient._();
  GIngredient createEmptyInstance() => create();
  static $pb.PbList<GIngredient> createRepeated() => $pb.PbList<GIngredient>();
  @$core.pragma('dart2js:noInline')
  static GIngredient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GIngredient>(create);
  static GIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get quantity => $_getN(1);
  @$pb.TagNumber(2)
  set quantity($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get precision => $_getN(2);
  @$pb.TagNumber(3)
  set precision($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrecision() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrecision() => clearField(3);

  @$pb.TagNumber(4)
  $6.Duration get cookingDuration => $_getN(3);
  @$pb.TagNumber(4)
  set cookingDuration($6.Duration v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCookingDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearCookingDuration() => clearField(4);
  @$pb.TagNumber(4)
  $6.Duration ensureCookingDuration() => $_ensure(3);

  @$pb.TagNumber(5)
  $5.GComponent get mainComponent => $_getN(4);
  @$pb.TagNumber(5)
  set mainComponent($5.GComponent v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMainComponent() => $_has(4);
  @$pb.TagNumber(5)
  void clearMainComponent() => clearField(5);
  @$pb.TagNumber(5)
  $5.GComponent ensureMainComponent() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$5.GComponent> get otherComponents => $_getList(5);

  @$pb.TagNumber(8)
  $5.GComponent get alternativeComponent => $_getN(6);
  @$pb.TagNumber(8)
  set alternativeComponent($5.GComponent v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAlternativeComponent() => $_has(6);
  @$pb.TagNumber(8)
  void clearAlternativeComponent() => clearField(8);
  @$pb.TagNumber(8)
  $5.GComponent ensureAlternativeComponent() => $_ensure(6);

  @$pb.TagNumber(10)
  $core.List<$5.GComponent> get secondaryComponents => $_getList(7);
}

class GListOfIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfIngredient', createEmptyInstance: create)
    ..pc<GIngredient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GIngredient.create)
    ..hasRequiredFields = false
  ;

  GListOfIngredient._() : super();
  factory GListOfIngredient({
    $core.Iterable<GIngredient>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfIngredient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfIngredient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfIngredient clone() => GListOfIngredient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfIngredient copyWith(void Function(GListOfIngredient) updates) => super.copyWith((message) => updates(message as GListOfIngredient)) as GListOfIngredient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfIngredient create() => GListOfIngredient._();
  GListOfIngredient createEmptyInstance() => create();
  static $pb.PbList<GListOfIngredient> createRepeated() => $pb.PbList<GListOfIngredient>();
  @$core.pragma('dart2js:noInline')
  static GListOfIngredient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfIngredient>(create);
  static GListOfIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GIngredient> get items => $_getList(0);
}

