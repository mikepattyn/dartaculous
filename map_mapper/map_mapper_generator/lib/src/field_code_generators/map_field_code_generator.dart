import 'package:analyzer/dart/element/type.dart';
import 'package:map_mapper_generator/src/field_code_generators/generic_field_code_generator.dart';
import 'package:map_mapper_generator/src/map_mapper_generator.helpers.dart';

class MapFieldCodeGenerator extends GenericFieldCodeGenerator {
  MapFieldCodeGenerator(super.fieldDescriptor, super.hasDefaultsProvider);

  @override
  String fromMapExpression(String sourceExpression) {
    final valueTypes =
        (fieldDescriptor.fieldElementType as ParameterizedType).typeArguments;
    if (valueTypes.length == 2 &&
        getAnnotationsByName(valueTypes[1], 'MapMapped').isNotEmpty) {
      final mapper =
          '\$${valueTypes[1].getDisplayString(withNullability: false)}MapMapper()';
      return '(map[\'$fieldName\'] as Map<String, dynamic>).map((k, v) => MapEntry(k, $mapper.fromMap(v)))';
    }
    return super.fromMapExpression(sourceExpression);
  }

  @override
  String get toMapExpression {
    final valueTypes =
        (fieldDescriptor.fieldElementType as InterfaceType).typeArguments;
    if (valueTypes.length == 2 &&
        getAnnotationsByName(valueTypes[1], 'MapMapped').isNotEmpty) {
      final mapper =
          '\$${valueTypes[1].getDisplayString(withNullability: false)}MapMapper()';
      return 'instance.$fieldName.map((k, v) => MapEntry(k, $mapper.toMap(v)))';
    }
    return super.toMapExpression;
  }
}
