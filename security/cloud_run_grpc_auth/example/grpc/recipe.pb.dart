///
//  Generated code. Do not modify.
//  source: recipe.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipe', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ingredients')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steps')
    ..hasRequiredFields = false
  ;

  GRecipe._() : super();
  factory GRecipe({
    $core.String? title,
    $core.String? description,
    $core.String? ingredients,
    $core.String? steps,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (ingredients != null) {
      _result.ingredients = ingredients;
    }
    if (steps != null) {
      _result.steps = steps;
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
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ingredients => $_getSZ(2);
  @$pb.TagNumber(3)
  set ingredients($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIngredients() => $_has(2);
  @$pb.TagNumber(3)
  void clearIngredients() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get steps => $_getSZ(3);
  @$pb.TagNumber(4)
  set steps($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSteps() => $_has(3);
  @$pb.TagNumber(4)
  void clearSteps() => clearField(4);
}

