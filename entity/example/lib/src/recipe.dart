import 'package:decimal/decimal.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

import 'category.dart';
import 'ingredient.dart';

part 'recipe.g.dart';

@validatable
@BuildBuilder(useDefaultsProvider: true)
@copyWith
@defaultsProvider
class Recipe {
  final String id;
  @required
  final String title;

  @required
  final String? description;

  final List<Ingredient> ingredients;
  final int numPosts;
  final double doubleNumPosts;
  final Decimal decimalNumPosts;

  final String? runtimeTag;

  final Ingredient mainIngredient;
  final Category category;

  Recipe({
    this.id = '',
    required this.description,
    required this.title,
    required this.ingredients,
    this.runtimeTag,
    required this.numPosts,
    required this.doubleNumPosts,
    required this.decimalNumPosts,
    required this.mainIngredient,
    required this.category,
  });
}
