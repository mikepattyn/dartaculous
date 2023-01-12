import 'package:squarealfa_validation_example/squarealfa_validation_example.dart';

void main() {
  final recipe = $RecipeDefaultsProvider().createWithDefaults();
  var validator = $RecipeValidator();

  var errors = validator.validate(recipe);

  for (var error in errors.validationErrors) {
    print('Error of type ${error.runtimeType} for field ${error.propertyName}');
  }
}
