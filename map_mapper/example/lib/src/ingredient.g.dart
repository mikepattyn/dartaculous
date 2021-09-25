// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $IngredientMapMapper extends MapMapper<Ingredient> {
  const $IngredientMapMapper();

  @override
  Ingredient fromMap(Map<String, dynamic> map) {
    return Ingredient(
      description: map['description'] as String,
      quantity: map['quantity'] as double,
    );
  }

  @override
  Map<String, dynamic> toMap(Ingredient instance) {
    final map = <String, dynamic>{};

    map['description'] = instance.description;
    map['quantity'] = instance.quantity;

    return map;
  }
}

extension $IngredientMapExtension on Ingredient {
  Map<String, dynamic> toMap() => const $IngredientMapMapper().toMap(this);
  static Ingredient fromMap(Map<String, dynamic> map) =>
      const $IngredientMapMapper().fromMap(map);
}

extension $MapIngredientExtension on Map<String, dynamic> {
  Ingredient toIngredient() => const $IngredientMapMapper().fromMap(this);
}

class $IngredientFieldNames {
  final String fieldName;
  final String prefix;

  $IngredientFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $IngredientFieldNames()
      : fieldName = '',
        prefix = '';

  static const _description = 'description';
  String get description => prefix + _description;
  static const _quantity = 'quantity';
  String get quantity => prefix + _quantity;

  @override
  String toString() => fieldName;
}
