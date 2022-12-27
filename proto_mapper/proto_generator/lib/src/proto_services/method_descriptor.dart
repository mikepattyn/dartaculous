import 'package:analyzer/dart/element/element.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class MethodDescriptor extends MethodDescriptorBase {
  final ProtoIgnore? protoIgnoreAnnotation;

  MethodDescriptor._(
    InterfaceElement classElement,
    MethodElement methodElement, {
    this.protoIgnoreAnnotation,
  }) : super(classElement, methodElement);

  factory MethodDescriptor.fromMethodElement(
    InterfaceElement classElement,
    MethodElement methodElement,
    // ProtoServices protoAnnotation,
  ) {
    final protoIgnoreAnnotation = _getProtoIgnoreAnnotation(methodElement);

    return MethodDescriptor._(
      classElement,
      methodElement,
      // protoAnnotation,
      protoIgnoreAnnotation: protoIgnoreAnnotation,
    );
  }

  @override
  bool get isRepeated => returnListParameterType != null;
  bool get _hasProtoIgnore => protoIgnoreAnnotation != null;

  bool get isProtoIncluded => !_hasProtoIgnore;

  bool get typeHasProtoAnnotation => methodElement.hasMapProto;

  @override
  bool get returnParameterTypeIsEnum =>
      returnParameterType.element!.kind == ElementKind.ENUM;
}

const _protoIgnoreChecker = TypeChecker.fromRuntime(ProtoIgnore);
ProtoIgnore? _getProtoIgnoreAnnotation(MethodElement methodElement) =>
    _protoIgnoreChecker.getMethodAnnotation(methodElement) == null
        ? null
        : ProtoIgnore();
