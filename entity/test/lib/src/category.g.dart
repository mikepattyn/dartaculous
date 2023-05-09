// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $CategoryValidator implements Validator {
  const $CategoryValidator();

  ValidationError? validateTitle(String value, {Category? entity}) {
    if (value.isEmpty) {
      return const RequiredValidationError('title');
    }

    return null;
  }

  ValidationError? $validateTitle(String? value, {Category? entity}) {
    if (value == null) {
      return const RequiredValidationError('title');
    }
    return validateTitle(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Category entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateTitle(entity.title, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant Category entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
