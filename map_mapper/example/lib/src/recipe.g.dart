// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $RecipeMapMapper extends MapMapper<Recipe> {
  const $RecipeMapMapper();

  @override
  Recipe fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Recipe(
      key: $kh.keyFromMap(map, 'key'),
      title: map['ptitle'] as String,
      ingredients: List<Ingredient>.unmodifiable(map['ingredients']
          .map((e) => const $IngredientMapMapper().fromMap(e))),
    );
  }

  @override
  Map<String, dynamic> toMap(Recipe instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.key, 'key');
    map['ptitle'] = instance.title;
    map['ingredients'] = instance.ingredients
        .map((e) => const $IngredientMapMapper().toMap(e))
        .toList();

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

  $RecipeFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

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

  @override
  String toString() => fieldName;
}
