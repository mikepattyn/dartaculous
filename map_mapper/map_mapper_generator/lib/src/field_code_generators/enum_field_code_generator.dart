import '../field_code_generator.dart';
import '../field_descriptor.dart';

class EnumFieldCodeGenerator extends FieldCodeGenerator {
  EnumFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression =>
    mapEntityAnnotation.mapEnumToString ?
      'instance.$fieldName.name' : 'instance.$fieldName.index';

  @override
  String get toNullableMapExpression =>
      mapEntityAnnotation.mapEnumToString ?
      'instance.$fieldName?.name' : 'instance.$fieldName?.index';

  @override
  String fromMapExpression(String sourceExpression) =>
      '''$sourceExpression is String ? 
    ${fieldDescriptor.fieldElementTypeName}.values
    .firstWhere((v) => v.name == $sourceExpression) : 
    ${fieldDescriptor.fieldElementTypeName}.values[$sourceExpression as int]''';
}
