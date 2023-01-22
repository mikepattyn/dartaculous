import 'binary_expression.dart';
import 'expressions.dart';

/// Defines an expression that is equal
/// when the [left] is lesser or equal to the [right].
class LessOrEqualThan extends BinaryExpression {
  const LessOrEqualThan(super.left, super.right);
  LessOrEqualThan.fieldValue(String fieldPath, dynamic input)
      : this(FieldPath(fieldPath), Input(input));
}
