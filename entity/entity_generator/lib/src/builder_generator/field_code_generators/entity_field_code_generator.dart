import '../field_code_generator.dart';

class EntityFieldCodeGenerator extends FieldCodeGenerator {
  EntityFieldCodeGenerator(
    super.fieldDescriptor,
    super.buildBuilder,
  );

  @override
  String get fieldType => '\$${fieldDescriptor.fieldElementTypeName}Builder';

  @override
  String get fieldDeclaration =>
      '  $fieldType${fieldDescriptor.nullSuffix} ${fieldDescriptor.displayName};';

  @override
  String get toBuilderExpression => fieldDescriptor.isNullable
      ? '''entity.${fieldDescriptor.displayName} == null ? null : \$${fieldDescriptor.fieldElementTypeName}Builder.from${fieldDescriptor.fieldElementTypeName}(entity.${fieldDescriptor.displayName}!)'''
      : '''\$${fieldDescriptor.fieldElementTypeName}Builder.from${fieldDescriptor.fieldElementTypeName}(entity.${fieldDescriptor.displayName})''';

  @override
  String get constructorAssignment => fieldDescriptor.isNullable
      ? ''
      : '${fieldDescriptor.displayName} = ${fieldDescriptor.displayName} ?? $fieldType()';

  @override
  String get constructorStatement => '';

  @override
  String get constructorExpression =>
      '${fieldDescriptor.displayName}${fieldDescriptor.isNullable ? '?' : ''}.build()';

  @override
  String get defaultProvided =>
      ' ?? \$${fieldDescriptor.fieldElementTypeName}Builder()';

  @override
  bool get usesDefaultsProvided => false;
}
