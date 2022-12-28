import 'package:analyzer/dart/element/element.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class MethodDescriptor extends MethodDescriptorBase {
  final MapProtoServices protoServicesAnnotation;

  MethodDescriptor._(InterfaceElement classElement, MethodElement methodElement,
      this.protoServicesAnnotation)
      : super(classElement, methodElement);

  factory MethodDescriptor.fromMethodElement(
    InterfaceElement classElement,
    MethodElement methodElement,
    MapProtoServices protoServicesAnnotation,
  ) {
    return MethodDescriptor._(
      classElement,
      methodElement,
      protoServicesAnnotation,
    );
  }

  String get prefix => protoServicesAnnotation.prefix ?? '';

  @override
  bool get isRepeated => returnListParameterType != null;

  @override
  bool get returnParameterTypeIsEnum =>
      returnParameterType.element!.kind == ElementKind.ENUM;
}
