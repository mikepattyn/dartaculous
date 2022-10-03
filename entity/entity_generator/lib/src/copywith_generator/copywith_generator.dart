import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'field_descriptor.dart';

class CopyWithGenerator extends GeneratorForAnnotation<CopyWith> {
  late String _className;

  CopyWithGenerator(BuilderOptions options);

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is EnumElement) return '';
    final classElement = element.asInterfaceElement();
    _className = classElement.name;

    if (classElement.kind == ElementKind.ENUM) return '';

    var fieldDescriptors = _getFieldDescriptors(classElement);

    if (fieldDescriptors.isEmpty) return '';

    var renderBuffer = StringBuffer();
    renderBuffer.writeln(_renderCopyWithExtension(fieldDescriptors));

    return renderBuffer.toString();
  }

  String _renderCopyWithExtension(Iterable<FieldDescriptor> fieldDescriptors) {
    var className = _className;
    var copyWithParameterFieldBuffer = StringBuffer();
    var copyWithAssignmentFieldBuffer = StringBuffer();

    for (var fieldDescriptor in fieldDescriptors) {
      copyWithParameterFieldBuffer.writeln(
          '${fieldDescriptor.fieldElementTypeName}? ${fieldDescriptor.displayName},');
      var resetFieldName = fieldDescriptor.isNullable
          ? 'set${fieldDescriptor.pascalName}ToNull'
          : null;
      if (resetFieldName != null) {
        copyWithParameterFieldBuffer.writeln('bool $resetFieldName = false,');
      }
      copyWithAssignmentFieldBuffer.writeln(
        '''${fieldDescriptor.displayName}: ${resetFieldName == null ? '' : '$resetFieldName ? null :'} ${fieldDescriptor.displayName} ?? this.${fieldDescriptor.displayName},''',
      );
    }

    var copyWithExtension = '''
          extension \$${className}CopyWithExtension on $className {
        $className copyWith({
          $copyWithParameterFieldBuffer
        }) {
        return $className(
          $copyWithAssignmentFieldBuffer
          );
      }
    }
    ''';

    return copyWithExtension;
  }
}

Iterable<FieldDescriptor> _getFieldDescriptors(InterfaceElement classElement) {
  final fieldSet = classElement.getSortedFieldSet();
  final fieldDescriptors = fieldSet
      .map((fieldElement) => FieldDescriptor.fromFieldElement(fieldElement));
  return fieldDescriptors;
}
