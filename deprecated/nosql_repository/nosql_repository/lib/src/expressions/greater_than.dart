import 'binary_expression.dart';
import 'expressions.dart';

/// Defines an expression that is equal
/// when the [left] is greater than the [right].
class GreaterThan extends BinaryExpression {
  const GreaterThan(super.left, super.right);
  GreaterThan.fieldValue(String fieldPath, dynamic input)
      : this(FieldPath(fieldPath), Input(input));
}
