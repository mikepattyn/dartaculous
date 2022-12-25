// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart';
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
        _useWellKnownTypes = useWellKnownTypes,
        _fieldDescriptors = element
            .asClassElement()
            .getFieldDescriptors(protoReflected.proto, prefix, forEnum: false)
            .toList();

  final String _prefix;
  final bool _useWellKnownTypes;
  final Element element;
  final ClassElement classElement;
  final externalProtoNames = <String>[];
  final Proto proto;
  final Map<DartType, int> knownSubclasses;
  final _alreadyImported = <String>{};
  final List<FieldDescriptor> _fieldDescriptors;

  String generate() {
    final prefix = proto.prefix ?? _prefix;
    final className = classElement.name;
    final fieldDeclarations = _createFieldDeclarations();

    final fieldsMessage =
        knownSubclasses.isEmpty ? '' : _getFieldsMessage(fieldDeclarations);
    final classMessageContent =
        knownSubclasses.isEmpty ? fieldDeclarations : _getClassMessageContent();

    final imports = _getImports();

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

  String _getFieldsMessage(String fieldDeclarations) {
    if (knownSubclasses.isEmpty) return '';

    final className = classElement.name;

    final fieldsMessage = '''
message ${_prefix}FieldsOf$className
{
$fieldDeclarations
}
    ''';
    return fieldsMessage;
  }

  StringBuffer _getImports() {
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

  String _getClassMessageContent() {
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

  String _createSuperFieldsOf() {
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
        '  ${_prefix}FieldsOf$className fieldsOfSuperClass = ${proto.superFieldsNumber};\n';
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

  String _createFieldDeclarations() {
    final superFieldsOf = _createSuperFieldsOf();
    final fieldDeclarations = createFieldDeclarations(
      _fieldDescriptors,
      externalProtoNames,
      _useWellKnownTypes,
    );
    return '''$superFieldsOf
$fieldDeclarations''';
  }
}
