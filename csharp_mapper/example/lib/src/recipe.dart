import 'package:csharp_annotations/csharp_annotations.dart';

import 'ingredient.dart';

@csharp
class Recipe {
  Recipe({
    this.id = '',
    required this.title,
    required this.ingredients,
    this.runtimeTag,
  });

  final String id;

  final String title;

  final List<Ingredient> ingredients;

  final String? runtimeTag;
}
