// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $RecipeBuilder implements Builder<Recipe> {
  final _defaultsProvider = $RecipeDefaultsProvider();

  String? $id;
  String get id => $id ?? _defaultsProvider.id;
  set id(String value) => $id = value;

  String? $title;
  String get title => $title ?? _defaultsProvider.title;
  set title(String value) => $title = value;

  String? description;
  List<Ingredient> ingredients;
  int? $numPosts;
  int get numPosts => $numPosts ?? _defaultsProvider.numPosts;
  set numPosts(int value) => $numPosts = value;

  double? $doubleNumPosts;
  double get doubleNumPosts =>
      $doubleNumPosts ?? _defaultsProvider.doubleNumPosts;
  set doubleNumPosts(double value) => $doubleNumPosts = value;

  Decimal? $decimalNumPosts;
  Decimal get decimalNumPosts =>
      $decimalNumPosts ?? _defaultsProvider.decimalNumPosts;
  set decimalNumPosts(Decimal value) => $decimalNumPosts = value;

  String? runtimeTag;
  Ingredient? $mainIngredient;
  Ingredient get mainIngredient =>
      $mainIngredient ?? _defaultsProvider.mainIngredient;
  set mainIngredient(Ingredient value) => $mainIngredient = value;

  Category? $category;
  Category get category => $category ?? _defaultsProvider.category;
  set category(Category value) => $category = value;

  $RecipeBuilder({
    String? id,
    String? title,
    this.description,
    List<Ingredient>? ingredients,
    int? numPosts,
    double? doubleNumPosts,
    Decimal? decimalNumPosts,
    this.runtimeTag,
    Ingredient? mainIngredient,
    Category? category,
  }) : ingredients = ingredients ?? [] {
    $id = id;
    $title = title;
    $numPosts = numPosts;
    $doubleNumPosts = doubleNumPosts;
    $decimalNumPosts = decimalNumPosts;
    $mainIngredient = mainIngredient;
    $category = category;
  }

  $RecipeBuilder.fromRecipe(Recipe entity)
      : this(
          id: entity.id,
          title: entity.title,
          description: entity.description,
          ingredients: entity.ingredients,
          numPosts: entity.numPosts,
          doubleNumPosts: entity.doubleNumPosts,
          decimalNumPosts: entity.decimalNumPosts,
          runtimeTag: entity.runtimeTag,
          mainIngredient: entity.mainIngredient,
          category: entity.category,
        );

  @override
  Recipe build() {
    final entity = _build();
    const $RecipeValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<Recipe> tryBuild() {
    try {
      final entity = _build();
      final errors = $RecipeValidator().validate(entity);

      final result =
          BuildResult<Recipe>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<Recipe>(exception: ex);
    }
  }

  Recipe _build() {
    var entity = Recipe(
      id: id,
      title: title,
      description: description,
      ingredients: ingredients,
      numPosts: numPosts,
      doubleNumPosts: doubleNumPosts,
      decimalNumPosts: decimalNumPosts,
      runtimeTag: runtimeTag,
      mainIngredient: mainIngredient,
      category: category,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $RecipeCopyWithExtension on Recipe {
  Recipe copyWith({
    String? id,
    String? title,
    String? description,
    bool setDescriptionToNull = false,
    List<Ingredient>? ingredients,
    int? numPosts,
    double? doubleNumPosts,
    Decimal? decimalNumPosts,
    String? runtimeTag,
    bool setRuntimeTagToNull = false,
    Ingredient? mainIngredient,
    Category? category,
  }) {
    return Recipe(
      id: id ?? this.id,
      title: title ?? this.title,
      description:
          setDescriptionToNull ? null : description ?? this.description,
      ingredients: ingredients ?? this.ingredients,
      numPosts: numPosts ?? this.numPosts,
      doubleNumPosts: doubleNumPosts ?? this.doubleNumPosts,
      decimalNumPosts: decimalNumPosts ?? this.decimalNumPosts,
      runtimeTag: setRuntimeTagToNull ? null : runtimeTag ?? this.runtimeTag,
      mainIngredient: mainIngredient ?? this.mainIngredient,
      category: category ?? this.category,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $RecipeDefaultsProvider {
  const $RecipeDefaultsProvider();

  Recipe createWithDefaults({
    String? id,
    String? title,
    List<Ingredient>? ingredients,
    int? numPosts,
    double? doubleNumPosts,
    Decimal? decimalNumPosts,
    Ingredient? mainIngredient,
    Category? category,
  }) {
    return Recipe(
      id: id ?? this.id,
      description: null,
      title: title ?? this.title,
      ingredients: ingredients ?? this.ingredients,
      runtimeTag: null,
      numPosts: numPosts ?? this.numPosts,
      doubleNumPosts: doubleNumPosts ?? this.doubleNumPosts,
      decimalNumPosts: decimalNumPosts ?? this.decimalNumPosts,
      mainIngredient: mainIngredient ?? this.mainIngredient,
      category: category ?? this.category,
    );
  }

  String get id => '';
  String get title => '';
  List<Ingredient> get ingredients => const [];
  int get numPosts => 0;
  double get doubleNumPosts => 0;
  Decimal get decimalNumPosts => Decimal.zero;
  Ingredient get mainIngredient =>
      $IngredientDefaultsProvider().createWithDefaults();
  Category get category => $CategoryDefaultsProvider().createWithDefaults();
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $RecipeValidator implements Validator {
  const $RecipeValidator();

  ValidationError? validateId(String value, {Recipe? entity}) {
    return null;
  }

  ValidationError? validateTitle(String value, {Recipe? entity}) {
    if (value.isEmpty) {
      return RequiredValidationError('title');
    }

    return null;
  }

  ValidationError? validateDescription(String? value, {Recipe? entity}) {
    if (value?.isEmpty ?? true) {
      return RequiredValidationError('description');
    }

    return null;
  }

  ValidationError? validateIngredients(List<Ingredient> value,
      {Recipe? entity}) {
    return null;
  }

  ValidationError? validateNumPosts(int value, {Recipe? entity}) {
    return null;
  }

  ValidationError? validateDoubleNumPosts(double value, {Recipe? entity}) {
    return null;
  }

  ValidationError? validateDecimalNumPosts(Decimal value, {Recipe? entity}) {
    return null;
  }

  ValidationError? validateRuntimeTag(String? value, {Recipe? entity}) {
    return null;
  }

  ValidationError? validateMainIngredient(Ingredient value, {Recipe? entity}) {
    return null;
  }

  ValidationError? validateCategory(Category value, {Recipe? entity}) {
    return null;
  }

  ValidationError? $validateId(String? value, {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('id');
    }
    return validateId(value, entity: entity);
  }

  ValidationError? $validateTitle(String? value, {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('title');
    }
    return validateTitle(value, entity: entity);
  }

  ValidationError? $validateIngredients(List<Ingredient>? value,
      {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('ingredients');
    }
    return validateIngredients(value, entity: entity);
  }

  ValidationError? $validateNumPosts(int? value, {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('numPosts');
    }
    return validateNumPosts(value, entity: entity);
  }

  ValidationError? $validateDoubleNumPosts(double? value, {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('doubleNumPosts');
    }
    return validateDoubleNumPosts(value, entity: entity);
  }

  ValidationError? $validateDecimalNumPosts(Decimal? value, {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('decimalNumPosts');
    }
    return validateDecimalNumPosts(value, entity: entity);
  }

  ValidationError? $validateMainIngredient(Ingredient? value,
      {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('mainIngredient');
    }
    return validateMainIngredient(value, entity: entity);
  }

  ValidationError? $validateCategory(Category? value, {Recipe? entity}) {
    if (value == null) {
      return RequiredValidationError('category');
    }
    return validateCategory(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Recipe entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateId(entity.id, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateTitle(entity.title, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateDescription(entity.description, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error = validateIngredients(entity.ingredients, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error = validateNumPosts(entity.numPosts, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error =
            validateDoubleNumPosts(entity.doubleNumPosts, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error =
            validateDecimalNumPosts(entity.decimalNumPosts, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error = validateRuntimeTag(entity.runtimeTag, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error =
            validateMainIngredient(entity.mainIngredient, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error = validateCategory(entity.category, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant Recipe entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
