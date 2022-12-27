import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_common.dart';
import '../proto_services_generator_base.dart';
import 'method_descriptor.dart';

class ProtoServicesGenerator {
  final Config config;
  final imports = <String>{};
  final wrappers = <String>{};
  final services = <String>{};
  final messages = <String>{};

  ProtoServicesGenerator(this.config);

  generateForAnnotatedElement(Element element) {
    var classElement = element.asInterfaceElement();
    if (classElement.kind == ElementKind.ENUM) return;

    final generator = _Generator(
      classElement: classElement,
      config: config,
      imports: imports,
      wrappers: wrappers,
      services: services,
      messages: messages,
    );

    generator.generateForClass();
  }
}

class _Generator extends ProtoServicesGeneratorBase {
  final Set<String> imports;
  final Set<String> wrappers;
  final Set<String> messages;
  final Set<String> services;

  _Generator({
    required Config config,
    required InterfaceElement classElement,
    required this.imports,
    required this.wrappers,
    required this.messages,
    required this.services,
  }) : super(classElement: classElement, config: config);

  void generateForClass() {
    final messagesBuffer = StringBuffer();
    final methodDescriptors = _getMethodDescriptors(classElement);
    final methodDeclarations = _createMethodDeclarations(
      methodDescriptors,
      messagesBuffer,
    );

    if (methodDeclarations.isNotEmpty) {
      services.add('''
service ${config.prefix}$serviceClassName
{
$methodDeclarations} 
    ''');
    }

    final messageContent = messagesBuffer.toString().trim();
    if (messageContent.isNotEmpty) {
      messages.add(messageContent);
    }
  }

  String _createMethodDeclarations(
    Iterable<MethodDescriptor> methodDescriptors,
    StringBuffer messagesBuffer,
  ) {
    var methodBuffer = StringBuffer();

    for (var methodDescriptor in methodDescriptors) {
      final methodName = methodDescriptor.pascalName;
      final parameterType = _getParameterType(methodDescriptor, messagesBuffer);
      final returnType = _getReturnType(methodDescriptor, messagesBuffer);

      methodBuffer.writeln(
          '''  rpc $methodName ($parameterType) returns ($returnType);''');
    }
    return methodBuffer.toString();
  }

  String _getReturnType(
    MethodDescriptor methodDescriptor,
    StringBuffer messagesBuffer,
  ) {
    final protoMappedReturnType = _getProtoMappedReturnType(methodDescriptor);
    if (protoMappedReturnType.isNotEmpty) {
      return protoMappedReturnType;
    }

    final messageName = getReturnMessageName(methodDescriptor.pascalName);

    final fieldDeclarations =
        _getReturnFieldDeclarations(methodDescriptor.returnType.futureType);

    messagesBuffer.write(
      '''
message $messageName {
$fieldDeclarations}

''',
    );

    return messageName;
  }

  String _getProtoMappedReturnType(MethodDescriptor methodDescriptor) {
    final returnType = methodDescriptor.returnType;
    final finalType = returnType.finalType;
    if (finalType.isVoid) return '';
    if (finalType.element?.kind == ElementKind.ENUM) return '';
    if (!finalType.hasProto) return '';
    if (returnType.futureType.nullabilitySuffix == NullabilitySuffix.question) {
      return '';
    }

    return _getTypeName(returnType);
  }

  String _getParameterType(
    MethodDescriptor methodDescriptor,
    StringBuffer messagesBuffer,
  ) {
    final protoMappedParameter = _getProtoMappedParameterType(methodDescriptor);
    if (protoMappedParameter.isNotEmpty) {
      return protoMappedParameter;
    }

    final messageName = getParameterMessageName(methodDescriptor.pascalName);

    final fieldDeclarations = _getParameterFieldDeclarations(methodDescriptor);

    messagesBuffer.write(
      '''
message $messageName {
$fieldDeclarations}

''',
    );

    return messageName;
  }

  String _getReturnFieldDeclarations(DartType type) {
    if (type.isVoid) return '';
    final fd = FieldDescriptor(
      protoAnnotation: Proto.numbered(),
      protoFieldAnnotation: ProtoField(1),
      config: config,
      displayName: 'value',
      isFinal: true,
      isLate: false,
      hasInitializer: false,
      name: 'value',
      fieldElementType: type,
    );
    final fieldDeclarations = createFieldDeclarations(
      fieldDescriptors: [fd],
      imports: imports,
      wrappers: wrappers,
      config: config,
    );
    return fieldDeclarations;
  }

  String _getParameterFieldDeclarations(MethodDescriptor methodDescriptor) {
    int number = 1;
    final fds = methodDescriptor.methodElement.parameters
        .map((p) => FieldDescriptor(
              protoAnnotation: Proto.auto(),
              protoFieldAnnotation: ProtoField(number++),
              config: config,
              displayName: p.displayName,
              fieldElementType: p.type,
              isFinal: true,
              isLate: false,
              hasInitializer: false,
              name: p.name,
            ))
        .toList();

    final fieldDeclarations = createFieldDeclarations(
      fieldDescriptors: fds,
      imports: imports,
      wrappers: wrappers,
      config: config,
    );
    return fieldDeclarations;
  }

  String _getTypeName(DartType type) {
    final itemType = type.finalType;
    final stream = type.futureType.isDartAsyncStream ? 'stream ' : '';
    final listOf = (type.isList || type.isSet) ? 'ListOf' : '';
    final displayName = itemType.getDisplayString(withNullability: false);
    final ret = '$stream${config.prefix}$listOf$displayName';
    return ret;
  }

  String _getProtoMappedParameterType(MethodDescriptor methodDescriptor) {
    if (methodDescriptor.methodElement.parameters.length != 1) {
      return '';
    }
    final finalType = methodDescriptor.parameterType.finalType;
    if (!finalType.hasProto) return '';

    return _getTypeName(methodDescriptor.parameterType);
  }
}

Iterable<MethodDescriptor> _getMethodDescriptors(
    InterfaceElement classElement) {
  final methods = classElement.getSortedMethods();
  final methodDescriptors = methods
      .map((fieldElement) => MethodDescriptor.fromMethodElement(
            classElement,
            fieldElement,
          ))
      .where((element) => element.isProtoIncluded);
  return methodDescriptors;
}
