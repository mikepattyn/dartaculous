import '../../field_code_generator.dart';

class MicrosecondsDurationFieldCodeGenerator extends FieldCodeGenerator {
  MicrosecondsDurationFieldCodeGenerator(
    super.fieldDescriptor,
    super.hasDefaultsProvider,
  );

  @override
  String get toMapExpression => 'instance.$fieldName.inMicroseconds';

  @override
  String get toNullableMapExpression => 'instance.$fieldName?.inMicroseconds';

  @override
  String fromMapExpression(String sourceExpression) =>
      'Duration(microseconds: $sourceExpression)';
}
