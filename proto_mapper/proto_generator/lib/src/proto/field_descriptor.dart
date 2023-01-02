import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final Config config;
  final Proto protoAnnotation;
  final ProtoField protoFieldAnnotation;
  final bool forEnum;

  FieldDescriptor({
    required this.protoAnnotation,
    required this.config,
    required String displayName,
    required String name,
    required bool isFinal,
    required bool isLate,
    required bool hasInitializer,
    required DartType fieldElementType,
    required this.protoFieldAnnotation,
    this.forEnum = false,
  }) : super(
          displayName: displayName,
          name: name,
          isFinal: isFinal,
          isLate: isLate,
          hasInitializer: hasInitializer,
          fieldElementType: fieldElementType,
        );

  FieldDescriptor.fromFieldElement({
    required FieldElement fieldElement,
    required this.protoAnnotation,
    required this.protoFieldAnnotation,
    required this.forEnum,
    required this.config,
  }) : super.fromFieldElement(fieldElement);

  String get prefix => config.prefix;

  @override
  bool get isRepeated =>
      listParameterType != null ||
      setParameterType != null ||
      iterableParameterType != null;

  String get protoFieldName {
    if (null != protoFieldAnnotation.name) {
      return protoFieldAnnotation.name!;
    }
    if (config.useProtoFieldNamingConventions) {
      if (forEnum) {
        return '${prefix}_${fieldElementTypeName}_$name'
            .snakeCase
            .toUpperCase();
      }
      return name.snakeCase;
    }
    return name;
  }

  int get number => protoFieldAnnotation.number;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;
}
