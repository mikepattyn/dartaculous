import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

part 'd_recipe.g.dart';

@validatable
@BuildBuilder(useDefaultsProvider: true)
@copyWith
@defaultsProvider
class DRecipe {
  @required
  final String title;

  @required
  final String? description;

  DRecipe({
    required this.title,
    this.description,
  });
}
