import '../../field_code_generator.dart';

class MillisecondsDateTimeFieldCodeGenerator extends FieldCodeGenerator {
  MillisecondsDateTimeFieldCodeGenerator(
    super.fieldDescriptor,
    super.hasDefaultsProvider,
  );

  @override
  String get toMapExpression => 'instance.$fieldName.millisecondsSinceEpoch';

  @override
  String get toNullableMapExpression =>
      'instance.$fieldName?.millisecondsSinceEpoch';

  @override
  String fromMapExpression(String sourceExpression) =>
      'DateTime.fromMillisecondsSinceEpoch($sourceExpression)';
}
