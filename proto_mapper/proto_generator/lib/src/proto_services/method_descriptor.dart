import 'package:analyzer/dart/element/element.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class MethodDescriptor extends MethodDescriptorBase {
  MethodDescriptor._(InterfaceElement classElement, MethodElement methodElement)
      : super(classElement, methodElement);

  factory MethodDescriptor.fromMethodElement(
    InterfaceElement classElement,
    MethodElement methodElement,
  ) {
    return MethodDescriptor._(classElement, methodElement);
  }

  @override
  bool get isRepeated => returnListParameterType != null;

  @override
  bool get returnParameterTypeIsEnum =>
      returnParameterType.element!.kind == ElementKind.ENUM;
}
