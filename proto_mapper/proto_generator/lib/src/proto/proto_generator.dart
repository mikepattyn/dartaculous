import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/proto_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

import '../proto_common.dart';
import 'field_descriptor.dart';
import 'proto_reflected.dart';

class ProtoGenerator extends GeneratorForAnnotation<Proto> {
  final BuilderOptions options;
  late String _prefix;
  late String _defaultPackage;
  late bool _useProtoFieldNamingConventions;
  String? prevBuildStepPath;
  final Set<String> alreadyImported = {};

  ProtoGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
    _defaultPackage = config['package'] as String? ?? '';
    _useProtoFieldNamingConventions =
        config['useProtoFieldNamingConventions'] as bool? ?? true;
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(
      annotation,
      prefix: _prefix,
      useProtoFieldNamingConventions: _useProtoFieldNamingConventions,
    );

    final proto = readAnnotation.proto;

    //var classElement = element.asInterfaceElement();
    var packageName = proto.packageName != '' ? '' : _defaultPackage;

    final packageDeclaration = packageName != '' ? 'package $packageName;' : '';

    var syntax = '';
    if (buildStep.inputId.path != prevBuildStepPath) {
      prevBuildStepPath = buildStep.inputId.path;
      syntax = '''syntax = "proto3";
      ''';
      alreadyImported.clear();
      alreadyImported.addAll(buildStep.allowedOutputs
          .map((e) => e.path.substring(e.path.lastIndexOf('/') + 1)));
    }

    var ret = element is EnumElement
        ? _generateForEnum(
            element,
            proto,
            packageDeclaration,
          )
        : _generateForClass(
            element,
            readAnnotation,
            packageDeclaration,
          );

    ret = '$syntax$ret';
    return ret;
  }

  String _generateForClass(
    Element element,
    ProtoReflected protoReflected,
    String packageDeclaration,
  ) {
    final classElement = element.asClassElement();
    final externalProtoNames = <String>[];
    final proto = protoReflected.proto;
    final knownSubclasses =
        getKnownSubclasses(protoReflected.knownSubClasses, Proto);
    var fieldDescriptors =
        _getFieldDescriptors(classElement, proto, _prefix, forEnum: false);
    final fieldDeclarations = classElement.isAbstract
        ? ''
        : createFieldDeclarations(fieldDescriptors, externalProtoNames);

    final prefix = proto.prefix ?? _prefix;
    final className = classElement.name;
    final fieldsMessage = _getFieldsMessage(
        classElement, knownSubclasses, fieldDeclarations, prefix);
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

$packageDeclaration

$messages

 
''';
    return ret;
  }

  String _getFieldsMessage(
    ClassElement classElement,
    List<DartType> knownSubclasses,
    String fieldDeclarations,
    String prefix,
  ) {
    if (knownSubclasses.isEmpty || classElement.isAbstract) return '';
    final className = classElement.name;
    final fieldsMessage = '''
message ${prefix}FieldsOf$className
{
  $fieldDeclarations
}
    ''';
    return fieldsMessage;
  }

  StringBuffer _getImports(List<String> externalProtoNames) {
    var imports = StringBuffer();
    for (var externalProtoName in externalProtoNames) {
      // Prevent .proto file from importing itself or multiple imports
      if (!alreadyImported.contains(externalProtoName)) {
        imports.writeln('import "$externalProtoName";');
        alreadyImported.add(externalProtoName);
      }
    }
    return imports;
  }

  String _generateForEnum(
    InterfaceElement interfaceElement,
    Proto annotation,
    String packageDeclaration,
  ) {
    var fieldBuffer = StringBuffer();
    var fieldDescriptors = _getFieldDescriptors(
        interfaceElement, annotation, _prefix,
        forEnum: true);
    final prefix = annotation.prefix ?? _prefix;
    var lineNumber = 0;
    for (var fieldDescriptor in fieldDescriptors) {
      fieldBuffer
          .writeln('  ${fieldDescriptor.protoFieldName} = ${lineNumber++};');
    }
    var className = interfaceElement.name;
    var ret = '''
    
$packageDeclaration
    
enum $prefix$className
{
$fieldBuffer}   
     
message Nullable$prefix$className
{
  bool ${(annotation.useProtoFieldNamingConventions ?? true) ? 'has_value' : 'hasValue'} = 1;
  $prefix$className value = 2;
}
 
''';

    return ret;
  }

  String _getClassMessageContent(
    Proto proto,
    ClassElement classElement,
    String fieldDeclarations,
    List<DartType> knownSubclasses,
    List<String> externalProtoNames,
  ) {
    if (knownSubclasses.isEmpty) return fieldDeclarations;
    final className = classElement.name;
    int lineNumber = 1;
    final prefix = proto.prefix ?? _prefix;
    final fieldsOf = classElement.isAbstract
        ? ''
        : '    ${prefix}FieldsOf$className ${className.snakeCase} = ${lineNumber++};\n';
    final fieldDescriptors = <FieldDescriptor>[
      ...knownSubclasses.map((ksc) {
        final annotation = ConstantReader(
            getAnnotationsByName(ksc, 'Proto').first.computeConstantValue());
        var readAnnotation = _hydrateAnnotation(
          annotation,
          prefix: _prefix,
          useProtoFieldNamingConventions: _useProtoFieldNamingConventions,
        );
        final fd = FieldDescriptor(
          readAnnotation.proto,
          displayName: ksc.getDisplayString(withNullability: false),
          name: ksc.getDisplayString(withNullability: false),
          fieldElementType: ksc,
          isFinal: true,
          isLate: false,
          hasInitializer: false,
          protoFieldAnnotation: ProtoField(number: lineNumber++),
        );
        return fd;
      }),
    ];

    final fds =
        createFieldDeclarations(fieldDescriptors, externalProtoNames, '    ');

    final ret = '''
  oneof props {
$fieldsOf$fds
  }
    ''';
    return ret;
  }
}

Iterable<FieldDescriptor> _getFieldDescriptors(
  InterfaceElement classElement,
  Proto annotation,
  String defaultPrefix, {
  bool forEnum = false,
}) {
  final fieldSet = classElement.getSortedFieldSet();
  final fieldDescriptors = fieldSet.map((fieldElement) {
    var relevantFieldType = fieldElement.type;
    if (relevantFieldType.isIterable || relevantFieldType.isList) {
      relevantFieldType =
          (relevantFieldType as InterfaceType).typeArguments.first;
    }
    var annotations = getAnnotationsByName(relevantFieldType, 'Proto');
    if (annotations.isNotEmpty) {
      final readAnnotation =
          ConstantReader(annotations.first.computeConstantValue());
      var hydratedAnnotation = _hydrateAnnotation(
        readAnnotation,
        prefix: defaultPrefix,
        useProtoFieldNamingConventions:
            annotation.useProtoFieldNamingConventions ?? false,
      );
      return FieldDescriptor.fromFieldElement(
          fieldElement, hydratedAnnotation.proto, forEnum);
    } else {
      return FieldDescriptor.fromFieldElement(
          fieldElement, annotation, forEnum);
    }
  }).where((element) => element.isProtoIncluded);
  return fieldDescriptors;
}

ProtoReflected _hydrateAnnotation(
  ConstantReader reader, {
  String prefix = '',
  required bool useProtoFieldNamingConventions,
}) {
  final proto = Proto(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    includeFieldsByDefault:
        reader.read('includeFieldsByDefault').literalValue as bool,
    packageName: reader.read('packageName').literalValue as String? ?? '',
    useProtoFieldNamingConventions:
        reader.read('useProtoFieldNamingConventions').literalValue as bool? ??
            useProtoFieldNamingConventions,
  );

  final kscReader = reader.read('knownSubClasses');
  final kscs = kscReader.isNull
      ? null
      : kscReader.listValue.map((ksc) {
          return ksc.toTypeValue()!;
        }).toList();

  final ret = ProtoReflected(proto, kscs);

  return ret;
}
