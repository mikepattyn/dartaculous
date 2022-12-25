// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/interface_element_extension.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_common.dart';
import 'field_code_generators/external_proto_name.dart';
import 'proto_reflected.dart';
import 'package:recase/recase.dart';

class ClassGenerator {
  ClassGenerator({
    required this.element,
    required ProtoReflected protoReflected,
    required String prefix,
    required bool useWellKnownTypes,
  })  : classElement = element.asClassElement(),
        proto = protoReflected.proto,
        knownSubclasses = protoReflected.knownSubClasses,
        _prefix = prefix,
        _useWellKnownTypes = useWellKnownTypes;

  final String _prefix;
  final bool _useWellKnownTypes;
  final Element element;
  final ClassElement classElement;
  final externalProtoNames = <String>[];
  final Proto proto;
  final Map<DartType, int> knownSubclasses;
  final _alreadyImported = <String>{};

  String generate() {
    var fieldDescriptors = classElement
        .getFieldDescriptors(proto, _prefix, forEnum: false)
        .toList();

    final fieldDeclarations = createFieldDeclarations(
      fieldDescriptors,
      externalProtoNames,
      _useWellKnownTypes,
    );

    final prefix = proto.prefix ?? _prefix;
    final className = classElement.name;
    final fieldsMessage = _getFieldsMessage(proto, classElement,
        knownSubclasses, fieldDeclarations, prefix, externalProtoNames);
    final classMessageContent = _getClassMessageContent(
      proto,
      classElement,
      fieldDeclarations,
      knownSubclasses,
      externalProtoNames,
    );

    final imports = _getImports(externalProtoNames);

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

    var ret = '''

$imports

$messages

 
''';
    return ret;
  }

  String _getFieldsMessage(
    Proto proto,
    ClassElement classElement,
    Map<DartType, int> knownSubclasses,
    String fieldDeclarations,
    String prefix,
    List<String> externalProtoNames,
  ) {
    if (knownSubclasses.isEmpty) return '';
    final className = classElement.name;

    final superFieldsOf = _createSuperFieldsOf(
      classElement,
      prefix,
      proto,
      externalProtoNames,
    );

    final fieldsMessage = '''
message ${prefix}FieldsOf$className
{
$superFieldsOf
$fieldDeclarations
}
    ''';
    return fieldsMessage;
  }

  StringBuffer _getImports(List<String> externalProtoNames) {
    var imports = StringBuffer();
    for (var externalProtoName in externalProtoNames) {
      // Prevent .proto file from importing itself or multiple imports
      if (!_alreadyImported.contains(externalProtoName)) {
        imports.writeln('import "$externalProtoName";');
        _alreadyImported.add(externalProtoName);
      }
    }
    return imports;
  }

  String _getClassMessageContent(
    Proto proto,
    ClassElement classElement,
    String fieldDeclarations,
    Map<DartType, int> knownSubclasses,
    List<String> externalProtoNames,
  ) {
    if (knownSubclasses.isEmpty) return fieldDeclarations;
    final className = classElement.name;
    final prefix = proto.prefix ?? _prefix;
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

  String _createSuperFieldsOf(
    ClassElement classElement,
    String prefix,
    Proto proto,
    List<String> externalProtoNames,
  ) {
    final superType = classElement.supertype;
    if (superType == null) return '';

    final tc = TypeChecker.fromRuntime(Proto);
    final annotation = tc.firstAnnotationOf(superType.element);
    if (annotation == null) return '';
    final superClassElement = superType.element.asClassElement();
    final className = superClassElement.name;

    final fieldProtoNames = getExternalProtoNames(superType);
    mergeProtoNames(fieldProtoNames, externalProtoNames);

    final superFieldsOf =
        '  ${prefix}FieldsOf$className fieldsOfSuperClass = ${proto.superFieldsNumber};\n';
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

      final fieldProtoNames = getExternalProtoNames(kscType);
      mergeProtoNames(fieldProtoNames, externalProtoNames);
      buffer.writeln(
          '    $_prefix$className ${className.snakeCase} = $kscNumber;');
    }
    return buffer.toString();
  }
}
