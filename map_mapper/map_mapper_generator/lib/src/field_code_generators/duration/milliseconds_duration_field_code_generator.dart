import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class MillisecondsDurationFieldCodeGenerator extends FieldCodeGenerator {
  MillisecondsDurationFieldCodeGenerator(
      super.fieldDescriptor, super.hasDefaultsProvider);

  @override
  String get toMapExpression => 'instance.$fieldName.inMilliseconds';

  @override
  String get toNullableMapExpression => 'instance.$fieldName?.inMilliseconds';

  @override
  String fromMapExpression(String sourceExpression) =>
      'Duration(milliseconds: $sourceExpression)';
}
