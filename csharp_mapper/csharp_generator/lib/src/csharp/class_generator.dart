// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:csharp_annotations/config.dart';
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:csharp_generator/src/csharp/interface_element_extension.dart';
import 'package:decimal/decimal.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'package:recase/recase.dart';

import 'field_descriptor.dart';

class ClassGenerator {
  ClassGenerator({
    required this.element,
    required this.config,
    required this.annotation,
  })  : classElement = element.asClassElement(),
        _fieldDescriptors = element
            .asClassElement()
            .getFieldDescriptors(
              annotation: annotation,
              config: config,
            )
            .toList();

  final Config config;
  final Element element;
  final ClassElement classElement;
  final List<FieldDescriptor> _fieldDescriptors;
  final CSharp annotation;

  String generate() {
    final className = classElement.name;
    final fieldDescriptors = _fieldDescriptors
        .where((element) => element.ignoreAnnotation == null)
        .toList();
    final properties = _generateProperties(fieldDescriptors);

    if (fieldDescriptors.length > 1) {
      return '''public record $className(
$properties
); ''';
    }
    return '''public record $className($properties); ''';
  }

  String _generateProperties(List<FieldDescriptor> fieldDescriptors) {
    var buffer = StringBuffer();
    final padding = fieldDescriptors.length > 1 ? '  ' : '';
    for (final fd in fieldDescriptors) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
        buffer.writeln();
      }
      final rendered = _renderField(fd);
      buffer.write('$padding$rendered');
    }

    return buffer.toString();
  }

  String _renderField(FieldDescriptor fd) {
    final basicType = _getTypeName(fd);
    final type = fd.isRepeated ? 'List<$basicType>' : basicType;
    return '$type${fd.nullSuffix} ${fd.name.camelCase}';
  }
}

String _getTypeName(FieldDescriptor fd) {
  final type = fd.itemType;
  final typeName = fd.itemType.getDisplayString(withNullability: false);

  if (type.isDartCoreString) {
    return 'string';
  }
  if (type.isDartCoreBool) {
    return 'bool';
  }
  if (type.isDartCoreInt) {
    return 'int';
  }
  if (type.isDartCoreDouble) {
    return 'double';
  }
  if (typeName == (Decimal).toString()) {
    return 'Decimal';
  }
  if (typeName == (DateTime).toString()) {
    return 'DateTime';
  }
  if (typeName == (Duration).toString()) {
    return 'TimeSpan';
  }

  return type.getDisplayString(withNullability: false);
}
