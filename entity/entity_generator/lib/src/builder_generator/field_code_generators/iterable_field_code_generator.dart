import '../field_code_generator.dart';

class IterableFieldCodeGenerator extends FieldCodeGenerator {
  IterableFieldCodeGenerator(super.fieldDescriptor, super.buildBuilder);

  @override
  String get fieldDeclaration =>
      '  $fieldType${fieldDescriptor.nullSuffix} ${fieldDescriptor.displayName};';

  @override
  String get fieldType => fieldDescriptor.parameterTypeHasEntityMapAnnotation &&
          !fieldDescriptor.parameterTypeIsEnum
      ? 'List<\$${fieldDescriptor.parameterTypeName}Builder>'
      : 'List<${fieldDescriptor.parameterTypeName}>';

  String get _listExpression => '''
        ${fieldDescriptor.isNullable ? 'entity.${fieldDescriptor.displayName} == null  ? null :' : ''}
        entity.${fieldDescriptor.valueName}.map((e) => 
          \$${fieldDescriptor.parameterTypeName}Builder.from${fieldDescriptor.parameterTypeName}(e)).toList()''';

  @override
  String get toBuilderExpression =>
      fieldDescriptor.parameterTypeHasEntityMapAnnotation &&
              !fieldDescriptor.parameterTypeIsEnum
          ? _listExpression
          : 'entity.${fieldDescriptor.displayName}.toList()';

  @override
  String get constructorAssignment => fieldDescriptor.isNullable
      ? ''
      : '${fieldDescriptor.displayName} = ${fieldDescriptor.displayName} ?? []';

  @override
  String get constructorStatement => '';

  @override
  String get constructorExpression => fieldDescriptor
              .parameterTypeHasEntityMapAnnotation &&
          !fieldDescriptor.parameterTypeIsEnum
      ? '''${fieldDescriptor.isNullable ? '${fieldDescriptor.displayName} == null ? null : ' : ''} List.unmodifiable(${fieldDescriptor.valueName}.map((e) => e.build()))'''
      : fieldDescriptor.displayName;

  @override
  String get defaultProvided => '?.toList() ?? []';

  @override
  bool get usesDefaultsProvided => false;
}
