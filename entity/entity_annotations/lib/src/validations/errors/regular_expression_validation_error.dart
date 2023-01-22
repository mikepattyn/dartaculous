import 'validation_error.dart';

/// Represents an error indicating that a required value is missing
class RegularExpressionValidationError extends ValidationError {
  final String expression;

  const RegularExpressionValidationError(
    super.fieldName, {
    required this.expression,
  });
}
