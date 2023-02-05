import 'package:analyzer/dart/element/element.dart';
import 'package:csharp_annotations/config.dart';
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final Config config;
  final CSharp csharpAnnotation;
  final CSharpIgnore? ignoreAnnotation;
  final bool forEnum;

  FieldDescriptor({
    required this.csharpAnnotation,
    required this.config,
    required super.displayName,
    required super.name,
    required super.isFinal,
    required super.isLate,
    required super.hasInitializer,
    required super.fieldElementType,
    this.ignoreAnnotation,
    this.forEnum = false,
  });

  FieldDescriptor.fromFieldElement({
    required FieldElement fieldElement,
    required this.csharpAnnotation,
    required this.forEnum,
    required this.config,
    this.ignoreAnnotation,
  }) : super.fromFieldElement(fieldElement);

  @override
  bool get isRepeated =>
      listParameterType != null ||
      setParameterType != null ||
      iterableParameterType != null;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;
}
