// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/proto_generator.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/interface_element_extension.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_common.dart';
import 'field_code_generators/external_proto_name.dart';
import 'field_descriptor.dart';
import 'proto_reflected.dart';
import 'package:recase/recase.dart';

class ClassGenerator {
  ClassGenerator({
    required this.element,
    required ProtoReflected protoReflected,
    required String prefix,
    required bool useWellKnownTypes,
    required bool useProtoFieldNamingConventions,
  })  : classElement = element.asClassElement(),
        proto = protoReflected.proto,
        knownSubclasses = protoReflected.knownSubClasses,
        _prefix = prefix,
        _useWellKnownTypes = useWellKnownTypes,
        _useProtoFieldNamingConventions = useProtoFieldNamingConventions;

  final String _prefix;
  final bool _useWellKnownTypes;
  final Element element;
  final ClassElement classElement;
  final externalProtoNames = <String>[];
  final Proto proto;
  final Map<DartType, int> knownSubclasses;
  final bool _useProtoFieldNamingConventions;
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
    final fieldDescriptors = <FieldDescriptor>[
      ...knownSubclasses.keys.map<FieldDescriptor>((ksc) {
        final annotation = ConstantReader(
            getAnnotationsByName(ksc, 'Proto').first.computeConstantValue());
        var readAnnotation = annotation.hydrateAnnotation(
          prefix: _prefix,
          useProtoFieldNamingConventions: _useProtoFieldNamingConventions,
        );

        final knownSubClass = knownSubclasses[ksc]!;
        final fd = FieldDescriptor(
          readAnnotation.proto,
          displayName: ksc.getDisplayString(withNullability: false),
          name: ksc.getDisplayString(withNullability: false),
          fieldElementType: ksc,
          isFinal: true,
          isLate: false,
          hasInitializer: false,
          protoFieldAnnotation: ProtoField.auto(number: knownSubClass),
        );
        return fd;
      }),
    ];

    final fds = createFieldDeclarations(
        fieldDescriptors, externalProtoNames, _useWellKnownTypes);

    final ret = '''
  oneof props {
$ownFieldsOf
$fds
  }
    ''';
    return ret;
  }
}
