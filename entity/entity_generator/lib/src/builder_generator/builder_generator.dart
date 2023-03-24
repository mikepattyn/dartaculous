import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

class BuilderGenerator extends GeneratorForAnnotation<BuildBuilder> {
  late String _className;

  BuilderGenerator(BuilderOptions options);

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final readAnnotation = _hydrateAnnotation(annotation);
    if (element is EnumElement) return '';
    var classElement = element.asInterfaceElement();
    _className = classElement.name;

    if (classElement.kind == ElementKind.ENUM) return '';

    final hasValidatable = _checkForValidatable(classElement);

    var fieldDescriptors = _getFieldDescriptors(classElement);

    if (fieldDescriptors.isEmpty) return '';

    var renderBuffer = StringBuffer();

    renderBuffer.writeln(
        _renderBuilder(readAnnotation, fieldDescriptors, hasValidatable));

    return renderBuffer.toString();
  }

  String _renderBuilder(BuildBuilder builder,
      Iterable<FieldDescriptor> fieldDescriptors, bool hasValidatable) {
    final className = _className;
    final builderClassName =
        '\$${className}Builder${builder.createBuilderBaseClass ? 'Base' : ''}';

    final fieldBuffer = StringBuffer();
    final assignmentBuffer = StringBuffer();
    final constructorBuffer = StringBuffer();
    final constructorAssignmentBuffer = StringBuffer();
    final constructorStatementBuffer = StringBuffer();
    final entityConstructorBuffer = StringBuffer();
    var usesDefaultsProvider = false;

    for (var fieldDescriptor in fieldDescriptors) {
      var gen = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor,
        builder,
      );

      usesDefaultsProvider = usesDefaultsProvider || gen.usesDefaultsProvided;

      fieldBuffer.writeln(gen.fieldDeclaration);
      constructorBuffer.writeln(gen.constructorDeclaration);
      final constructorStatement = gen.constructorStatement;
      if (constructorStatement.isNotEmpty) {
        constructorStatementBuffer.writeln(constructorStatement);
      }
      final constructorAssignment = gen.constructorAssignment;
      if (constructorAssignment.isNotEmpty) {
        constructorAssignmentBuffer.write(
            '''${constructorAssignmentBuffer.length == 0 ? ':' : ','} $constructorAssignment''');
      }

      assignmentBuffer.writeln(gen.toBuilderMap);
      entityConstructorBuffer.writeln(gen.entityConstructorMap);
    }

    final extensionClass = builder.createBuilderBaseClass
        ? '''
          extension \$${className}BuilderExtension on $className {
        $className rebuild() {
          final builder = \$${className}Builder.from$className(this);
          final entity = builder.build();
          return entity;
        }
      }
    '''
        : '';

    final defaultsProvider = usesDefaultsProvider
        ? 'final _defaultsProvider = const \$${className}DefaultsProvider();'
        : '';

    final constructorStatement = constructorStatementBuffer.isEmpty
        ? ';'
        : '''{
          $constructorStatementBuffer
        }''';

    var ret = '''

      class $builderClassName implements Builder<$className> {

        $defaultsProvider

        $fieldBuffer

        $builderClassName({ $constructorBuffer }) 
          $constructorAssignmentBuffer
          $constructorStatement

        $builderClassName.from$className($className entity) 
          : this($assignmentBuffer);        
        

        @override
        $className build() {
          final entity = _build();
          ${hasValidatable ? 'const \$${className}Validator().validateThrowing(entity);' : ''} 
          return entity;
        }

        @override
        BuildResult<$className> tryBuild() {
          try {
            final entity = _build();
            ${hasValidatable ? 'final errors = const \$${className}Validator().validate(entity);' : ''}
            
            final result =
                BuildResult<$className>(result: entity  ${hasValidatable ? ', validationErrors: errors' : ''}  );
            return result;
          } catch (ex) {
            return BuildResult<$className>(exception: ex);
          }
        }

        $className _build() {
          var entity = $className(
            $entityConstructorBuffer
          );
          return entity;
        }

      }

      $extensionClass

    ''';
    return ret;
  }
}

bool _checkForValidatable(InterfaceElement classElement) {
  final tc = TypeChecker.fromRuntime(Validatable);
  return tc.hasAnnotationOf(classElement);
}

Iterable<FieldDescriptor> _getFieldDescriptors(InterfaceElement classElement) {
  final fieldSet = classElement.getSortedFieldSet();
  final fieldDescriptors = fieldSet
      .map((fieldElement) => FieldDescriptor.fromFieldElement(fieldElement));
  return fieldDescriptors;
}

BuildBuilder _hydrateAnnotation(ConstantReader reader) {
  var validatable = BuildBuilder(
      createBuilderBaseClass: reader.read('createBuilderBaseClass').boolValue,
      useDefaultsProvider: reader.read('useDefaultsProvider').boolValue);
  return validatable;
}
