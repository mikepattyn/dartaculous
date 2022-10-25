///
//  Generated code. Do not modify.
//  source: recipe_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GRecipeTypes extends $pb.ProtobufEnum {
  static const GRecipeTypes G_RECIPE_TYPES_COOK = GRecipeTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_COOK');
  static const GRecipeTypes G_RECIPE_TYPES_GRILL = GRecipeTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_GRILL');
  static const GRecipeTypes G_RECIPE_TYPES_FRY = GRecipeTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_FRY');
  static const GRecipeTypes G_RECIPE_TYPES_STEW = GRecipeTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_STEW');

  static const $core.List<GRecipeTypes> values = <GRecipeTypes> [
    G_RECIPE_TYPES_COOK,
    G_RECIPE_TYPES_GRILL,
    G_RECIPE_TYPES_FRY,
    G_RECIPE_TYPES_STEW,
  ];

  static final $core.Map<$core.int, GRecipeTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GRecipeTypes? valueOf($core.int value) => _byValue[value];

  const GRecipeTypes._($core.int v, $core.String n) : super(v, n);
}

