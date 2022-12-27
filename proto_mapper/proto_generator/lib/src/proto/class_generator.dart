// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart';
import 'package:proto_generator/src/proto/interface_element_extension.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_common.dart';
import 'proto_reflected.dart';
import 'package:recase/recase.dart';

class ClassGenerator {
  ClassGenerator({
    required this.element,
    required ProtoReflected protoReflected,
    required this.config,
    required this.imports,
    required this.wrappers,
  })  : classElement = element.asClassElement(),
        proto = protoReflected.proto,
        knownSubclasses = protoReflected.knownSubClasses,
        _fieldDescriptors = element
            .asClassElement()
            .getFieldDescriptors(
              annotation: protoReflected.proto,
              config: config,
            )
            .toList();

  final Config config;
  final Element element;
  final ClassElement classElement;
  final Proto proto;
  final Map<DartType, int> knownSubclasses;
  final Set<String> imports;
  final Set<String> wrappers;
  final List<FieldDescriptor> _fieldDescriptors;

  String generate() {
    final prefix = config.prefix;
    final className = classElement.name;
    final fieldDeclarations = _createFieldDeclarations();

    final fieldsMessage =
        knownSubclasses.isEmpty ? '' : _getFieldsMessage(fieldDeclarations);
    final classMessageContent =
        knownSubclasses.isEmpty ? fieldDeclarations : _getClassMessageContent();

    final messages = '''

$fieldsMessage
  
message $prefix$className
{
$classMessageContent
}   

message ${prefix}ListOf$className
{
  repeated $prefix$className items = 1;
}
    ''';

    return messages;
  }

  String _getFieldsMessage(String fieldDeclarations) {
    if (knownSubclasses.isEmpty) return '';

    final className = classElement.name;

    final fieldsMessage = '''
message ${config.prefix}FieldsOf$className
{
$fieldDeclarations
}
    ''';
    return fieldsMessage;
  }

  String _getClassMessageContent() {
    final className = classElement.name;
    final prefix = config.prefix;

    final ownFieldsOf =
        '    ${prefix}FieldsOf$className ${className.snakeCase} = ${proto.ownFieldsNumber};\n';
    final subClassFields = _createSubClassFields();

    final ret = '''
  oneof props {
$ownFieldsOf
$subClassFields
  }
    ''';
    return ret;
  }

  String _createSuperFieldsOf() {
    final superType = classElement.supertype;
    if (superType == null) return '';

    final tc = TypeChecker.fromRuntime(Proto);
    final annotation = tc.firstAnnotationOf(superType.element);
    if (annotation == null) return '';
    final protoReflected = ConstantReader(annotation).hydrateAnnotation();
    final fieldsOf = protoReflected.knownSubClasses.isEmpty ? '' : 'FieldsOf';

    final superClassElement = superType.element.asClassElement();
    final className = superClassElement.name;

    final superFieldsOf =
        '  ${config.prefix}$fieldsOf$className fieldsOfSuperClass = ${proto.superFieldsNumber};\n';
    return superFieldsOf;
  }

  String _createSubClassFields() {
    final buffer = StringBuffer();
    for (final kscType in knownSubclasses.keys) {
      final kscNumber = knownSubclasses[kscType];

      final element = kscType.element;
      if (element == null) continue;
      final tc = TypeChecker.fromRuntime(Proto);
      final annotation = tc.firstAnnotationOf(element);
      if (annotation == null) continue;
      final className = element.asClassElement().name;

      buffer.writeln(
          '    ${config.prefix}$className ${className.snakeCase} = $kscNumber;');
    }
    return buffer.toString();
  }

  String _createFieldDeclarations() {
    final superFieldsOf = _createSuperFieldsOf();
    final fieldDeclarations = createFieldDeclarations(
      fieldDescriptors: _fieldDescriptors,
      imports: imports,
      wrappers: wrappers,
      config: config,
    );
    return '''$superFieldsOf
$fieldDeclarations''';
  }
}
