// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $PersonValidator implements Validator {
  const $PersonValidator();

  ValidationError? validateName(String value, {Person? entity}) {
    if (value.isEmpty) {
      return RequiredValidationError('name');
    }

    return null;
  }

  ValidationError? validateBirthDate(DateTime? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('birthDate');
    }

    return null;
  }

  ValidationError? validateGender(Gender value, {Person? entity}) {
    return null;
  }

  ValidationError? validateContracts(List<Contract> value, {Person? entity}) {
    return null;
  }

  ValidationError? validateSpouse(Person? value, {Person? entity}) {
    if (value == null) {
      return null;
    }

    var errors = $PersonValidator().validate(value);
    var errorListValidation = PropertyValidation('spouse', errors);

    if (errorListValidation.errorList.validationErrors.isNotEmpty) {
      return errorListValidation;
    }

    return null;
  }

  ValidationError? validateComment(String value, {Person? entity}) {
    if (value.length < 10) {
      return StringLengthValidationError(
        'comment',
        length: value.length,
        minLength: 10,
        maxLength: 20,
      );
    }

    if (value.length > 20) {
      return StringLengthValidationError(
        'comment',
        length: value.length,
        minLength: 10,
        maxLength: 20,
      );
    }

    return null;
  }

  ValidationError? validateIgnoreThisField(double value, {Person? entity}) {
    return null;
  }

  ValidationError? validateEmail(String value, {Person? entity}) {
    if (value.isNotEmpty &&
        !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(value)) {
      return EmailAddressValidationError('email');
    }

    return null;
  }

  ValidationError? validateAddress(String value, {Person? entity}) {
    if (RegExp(r'[a-zA-Z ]{1,19}').stringMatch(value) != value) {
      return RegularExpressionValidationError('address',
          expression: r'[a-zA-Z ]{1,19}');
    }

    return null;
  }

  ValidationError? validateHeight(double value, {Person? entity}) {
    if (value < 1.0) {
      return RangeValidationError('height',
          value: value, minValue: 1.0, maxValue: 2.5);
    }

    if (value > 2.5) {
      return RangeValidationError('height',
          value: value, minValue: 1.0, maxValue: 2.5);
    }

    return null;
  }

  ValidationError? validateWeight(int value, {Person? entity}) {
    if (value < 1) {
      return RangeValidationError('weight',
          value: value, minValue: 1, maxValue: 200);
    }

    if (value > 200) {
      return RangeValidationError('weight',
          value: value, minValue: 1, maxValue: 200);
    }

    return null;
  }

  ValidationError? $validateName(String? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('name');
    }
    return validateName(value, entity: entity);
  }

  ValidationError? $validateGender(Gender? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('gender');
    }
    return validateGender(value, entity: entity);
  }

  ValidationError? $validateContracts(List<Contract>? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('contracts');
    }
    return validateContracts(value, entity: entity);
  }

  ValidationError? $validateComment(String? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('comment');
    }
    return validateComment(value, entity: entity);
  }

  ValidationError? $validateIgnoreThisField(double? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('ignoreThisField');
    }
    return validateIgnoreThisField(value, entity: entity);
  }

  ValidationError? $validateEmail(String? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('email');
    }
    return validateEmail(value, entity: entity);
  }

  ValidationError? $validateAddress(String? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('address');
    }
    return validateAddress(value, entity: entity);
  }

  ValidationError? $validateHeight(double? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('height');
    }
    return validateHeight(value, entity: entity);
  }

  ValidationError? $validateWeight(int? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('weight');
    }
    return validateWeight(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Person entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateName(entity.name, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateBirthDate(entity.birthDate, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateGender(entity.gender, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateContracts(entity.contracts, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateSpouse(entity.spouse, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateComment(entity.comment, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error =
            validateIgnoreThisField(entity.ignoreThisField, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error = validateEmail(entity.email, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateAddress(entity.address, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateHeight(entity.height, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateWeight(entity.weight, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant Person entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
