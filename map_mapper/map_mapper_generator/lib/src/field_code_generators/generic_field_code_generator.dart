import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GenericFieldCodeGenerator extends FieldCodeGenerator {
  GenericFieldCodeGenerator(super.fieldDescriptor, super.hasDefaultsProvider);

  @override
  String fromMapExpression(String sourceExpression) =>
      '''$sourceExpression as ${fieldDescriptor.fieldElementTypeName}${fieldDescriptor.isNullable ? '?' : ''}''';

  @override
  String get fromNullableMapExpression =>
      fromMapExpression('map[\'$mapName\']');
}
