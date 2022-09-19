import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:defaults_provider_annotations/defaults_provider_annotations.dart';
import 'package:defaults_provider_generator/src/field_code_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_descriptor.dart';

class DefaultsProviderGenerator
    extends GeneratorForAnnotation<DefaultsProvider> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var validatable = _hydrateAnnotation(annotation);
    var createBaseClass = validatable.createDefaultsProviderBaseClass;

    try {
      return generateDefaultsProvider(element, createBaseClass);
    } catch (ex, stack) {
      print('*** Exception: $ex with stack: $stack');
      rethrow;
    }
  }

  static String generateDefaultsProvider(
      Element element, bool createBaseClass) {
    var classElement = element.asClassElement();
    if (classElement.kind == ElementKind.ENUM) return '';
    var superTypeElement = classElement.supertype!.element;

    var annotation = TypeChecker.fromRuntime(DefaultsProvider)
        .firstAnnotationOf(superTypeElement);

    final superClassHasDefaultsProvider = annotation != null;

    final className = classElement.name;

    final constructorFields = _getFieldDescriptors(classElement, true);
    final parameterFieldBuffer = StringBuffer();
    final constructorFieldBuffer = StringBuffer();

    // let's get all the constructors which cover all non-nullable final fields
    final missingFields = <String>{};
    final constructors = classElement.getConstructorsMatchingFields(
        fieldDescriptors: constructorFields,
        allowMissingFields: true,
        missingFields: missingFields
    );
    // let's just pick the first of the valid constructors
    final classConstructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
        'Cannot generate defaults provider for class ${classElement.name} because '
            'it is missing a constructor that covers all final properties.\n'
            '\tMissing fields: $missingFields')
        : constructors.first;
    _buildConstructorBuffer(classConstructor, [...constructorFields], constructorFieldBuffer, createBaseClass);

    for (var field in constructorFields) {
      final fieldTypeName = field.fieldElementTypeName == 'dynamic'
          ? field.fieldElementTypeName
          : '${field.fieldElementTypeName}?';
      parameterFieldBuffer.writeln('$fieldTypeName ${field.displayName},');
    }

    final propertyFields = _getFieldDescriptors(classElement, false);
    final propertyFieldBuffer = StringBuffer();

    for (var field in constructorFields) {
      if (!superClassHasDefaultsProvider ||
          propertyFields
              .any((element) => element.displayName == field.displayName)) {
        var gen =
            FieldCodeGenerator.fromFieldDescriptor(field, createBaseClass);
        propertyFieldBuffer.writeln(
            '''${field.fieldElementTypeName} get ${field.displayName} ${createBaseClass && gen.defaultExpression == '' ? '' : ' => ' + gen.defaultExpression};''');
      } else {
        propertyFieldBuffer.writeln(
            '''${field.fieldElementTypeName} get ${field.displayName} => _superDefaultsProvider.${field.displayName};''');
      }
    }

    final providerClassName =
        '\$${className}DefaultsProvider${createBaseClass ? 'Base' : ''}';

    final superDeclaration = superClassHasDefaultsProvider
        ? '''static const _superDefaultsProvider = \$${superTypeElement.name}DefaultsProvider();'''
        : '';

    final constructorName = classConstructor.name.isNotEmpty ? '$className.${classConstructor.name}' : className;

    final constructor = classElement.isAbstract
        ? ''
        : '''
        $className createWithDefaults( ${parameterFieldBuffer.isEmpty ? '' : '{ $parameterFieldBuffer }'} ) {
          return $constructorName(
            $constructorFieldBuffer
          );
        }
    ''';

    return '''

      ${createBaseClass ? 'abstract' : ''} class $providerClassName {
        const $providerClassName();

        $superDeclaration
      
        $constructor

        $propertyFieldBuffer
      
      }

    ''';
  }
}

void _buildConstructorBuffer(
    ConstructorElement constructor,
    List<FieldDescriptor> fromFieldDescriptors,
    StringBuffer constructorFieldBuffer,
    bool createBaseClass) {
  for (var constructorParameter in constructor.parameters) {
    final fieldDescriptorList = fromFieldDescriptors
        .where((element) => element.name == constructorParameter.name);
    var constructorArgValue = '${constructorParameter.displayName} ?? this.${constructorParameter.displayName}';
    if (fieldDescriptorList.isEmpty) {
      // If constructor arg is not in defined fields, just initialize it with "null"
      constructorArgValue = 'null';
    } else {
      final fieldDescriptor = fieldDescriptorList.first;
      fromFieldDescriptors.remove(fieldDescriptor);
    }
    if (constructorParameter.isNamed) {
      constructorFieldBuffer.writeln('${constructorParameter.displayName}: $constructorArgValue,');
    } else {
      constructorFieldBuffer.writeln('$constructorArgValue,');
    }
  }
}

Iterable<FieldDescriptor> _getFieldDescriptors(
    ClassElement classElement, bool includeInherited) {
  final fieldSet =
      classElement.getSortedFieldSet(includeInherited: includeInherited);
  final fieldDescriptors = fieldSet
      .map((fieldElement) => FieldDescriptor.fromFieldElement(fieldElement))
      .where((element) => !element.isNullable);
  return fieldDescriptors;
}

DefaultsProvider _hydrateAnnotation(ConstantReader reader) {
  var defaultsProvider = DefaultsProvider(
    createDefaultsProviderBaseClass:
        reader.read('createDefaultsProviderBaseClass').literalValue as bool? ??
            false,
  );
  return defaultsProvider;
}
