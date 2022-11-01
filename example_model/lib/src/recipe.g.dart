// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $RecipeMapMapper extends MapMapper<Recipe> {
  const $RecipeMapMapper();
  static const $type = 'Recipe';

  @override
  Recipe fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Recipe(
      key: $kh.keyFromMap(map, 'key'),
      title: map['title'] as String,
      ingredients: List<Ingredient>.unmodifiable(map['ingredients']
          .map((e) => const $IngredientMapMapper().fromMap(e))),
      runtimeTag: map['runtimeTag'] as String?,
    );
  }

  @override
  Map<String, dynamic> toMap(Recipe instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.key, 'key');
    map['title'] = instance.title;
    map['ingredients'] = instance.ingredients
        .map((e) => const $IngredientMapMapper().toMap(e))
        .toList();
    map['runtimeTag'] = instance.runtimeTag;

    return map;
  }
}

extension $RecipeMapExtension on Recipe {
  Map<String, dynamic> toMap() => const $RecipeMapMapper().toMap(this);
  static Recipe fromMap(Map<String, dynamic> map) =>
      const $RecipeMapMapper().fromMap(map);
}

extension $MapRecipeExtension on Map<String, dynamic> {
  Recipe toRecipe() => const $RecipeMapMapper().fromMap(this);
}

class $RecipeFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $RecipeFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $RecipeFieldNames()
      : fieldName = '',
        prefix = '';

  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);
  static const _title = 'title';
  String get title => prefix + _title;
  static const _ingredients = 'ingredients';
  $IngredientFieldNames get ingredients =>
      $IngredientFieldNames.sub(prefix + _ingredients);

  static const _runtimeTag = 'runtimeTag';
  String get runtimeTag => prefix + _runtimeTag;

  @override
  String toString() => fieldName;
}

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $RecipeProtoMapper implements ProtoMapper<Recipe, GRecipe> {
  const $RecipeProtoMapper();

  @override
  Recipe fromProto(GRecipe proto) => _$RecipeFromProto(proto);
  @override
  GRecipe toProto(Recipe entity) => _$RecipeToProto(entity);
  Recipe fromJson(String json) => _$RecipeFromProto(GRecipe.fromJson(json));
  String toJson(Recipe entity) => _$RecipeToProto(entity).writeToJson();
  String toBase64Proto(Recipe entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Recipe fromBase64Proto(String base64Proto) => _$RecipeFromProto(
      GRecipe.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GRecipe _$RecipeToProto(Recipe instance) {
  var proto = GRecipe();

  proto.key = instance.key;
  proto.ptitle = instance.title;
  proto.ingredients.addAll(instance.ingredients
      .map((e) => const $IngredientProtoMapper().toProto(e)));

  return proto;
}

Recipe _$RecipeFromProto(GRecipe instance) => Recipe(
      key: instance.key,
      title: instance.ptitle,
      ingredients: List<Ingredient>.unmodifiable(instance.ingredients
          .map((e) => const $IngredientProtoMapper().fromProto(e))),
    );

extension $RecipeProtoExtension on Recipe {
  GRecipe toProto() => _$RecipeToProto(this);
  String toJson() => _$RecipeToProto(this).writeToJson();
  static Recipe fromProto(GRecipe proto) => _$RecipeFromProto(proto);
  static Recipe fromJson(String json) =>
      _$RecipeFromProto(GRecipe.fromJson(json));
}

extension $GRecipeProtoExtension on GRecipe {
  Recipe toRecipe() => _$RecipeFromProto(this);
}
