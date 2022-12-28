import 'package:analyzer/dart/element/element.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class MethodDescriptor extends MethodDescriptorBase {
  MethodDescriptor._(InterfaceElement classElement, MethodElement methodElement)
      : super(classElement, methodElement);

  factory MethodDescriptor.fromMethodElement(
    InterfaceElement classElement,
    MethodElement methodElement,
  ) {
    return MethodDescriptor._(
      classElement,
      methodElement,
      // protoAnnotation,
    );
  }

  @override
  bool get isRepeated => returnListParameterType != null;

  bool get typeHasProtoAnnotation => methodElement.hasMapProto;

  @override
  bool get returnParameterTypeIsEnum =>
      returnParameterType.element!.kind == ElementKind.ENUM;
}
