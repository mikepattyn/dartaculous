// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'd_recipe.dart';

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $DRecipeBuilder implements Builder<DRecipe> {
  final _defaultsProvider = const $DRecipeDefaultsProvider();

  String? $title;
  String get title => $title ?? _defaultsProvider.title;
  set title(String value) => $title = value;

  String? description;

  $DRecipeBuilder({
    String? title,
    this.description,
  }) {
    $title = title;
  }

  $DRecipeBuilder.fromDRecipe(DRecipe entity)
      : this(
          title: entity.title,
          description: entity.description,
        );

  @override
  DRecipe build() {
    final entity = _build();
    const $DRecipeValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<DRecipe> tryBuild() {
    try {
      final entity = _build();
      final errors = const $DRecipeValidator().validate(entity);

      final result =
          BuildResult<DRecipe>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<DRecipe>(exception: ex);
    }
  }

  DRecipe _build() {
    var entity = DRecipe(
      title: title,
      description: description,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $DRecipeCopyWithExtension on DRecipe {
  DRecipe copyWith({
    String? title,
    String? description,
    bool setDescriptionToNull = false,
  }) {
    return DRecipe(
      title: title ?? this.title,
      description:
          setDescriptionToNull ? null : description ?? this.description,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $DRecipeDefaultsProvider {
  const $DRecipeDefaultsProvider();

  DRecipe createWithDefaults({
    String? title,
  }) {
    return DRecipe(
      title: title ?? this.title,
      description: null,
    );
  }

  String get title => '';
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $DRecipeValidator implements Validator {
  const $DRecipeValidator();

  ValidationError? validateTitle(String value, {DRecipe? entity}) {
    if (value.isEmpty) {
      return const RequiredValidationError('title');
    }

    return null;
  }

  ValidationError? validateDescription(String? value, {DRecipe? entity}) {
    if (value?.isEmpty ?? true) {
      return const RequiredValidationError('description');
    }

    return null;
  }

  ValidationError? $validateTitle(String? value, {DRecipe? entity}) {
    if (value == null) {
      return const RequiredValidationError('title');
    }
    return validateTitle(value, entity: entity);
  }

  @override
  ErrorList validate(covariant DRecipe entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateTitle(entity.title, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateDescription(entity.description, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant DRecipe entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
