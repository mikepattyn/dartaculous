import '../../field_code_generator.dart';

class Iso8601DateTimeFieldCodeGenerator extends FieldCodeGenerator {
  Iso8601DateTimeFieldCodeGenerator(
    super.fieldDescriptor,
    super.hasDefaultsProvider,
  );

  @override
  String get toMapExpression => 'instance.$fieldName.toIso8601String()';

  @override
  String get toNullableMapExpression =>
      'instance.$fieldName?.toIso8601String()';

  @override
  String fromMapExpression(String sourceExpression) =>
      'DateTime.parse($sourceExpression)';
}
