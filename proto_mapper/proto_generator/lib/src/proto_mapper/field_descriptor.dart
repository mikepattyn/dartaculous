import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/config.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/common/proto_common.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final Config config;
  final Proto proto;
  final ProtoField protoField;
  final String refName;
  final String protoRefName;

  FieldDescriptor({
    required this.proto,
    required this.config,
    required this.protoField,
    required this.refName,
    required this.protoRefName,
    required String displayName,
    required String name,
    required bool isFinal,
    required bool isLate,
    required bool hasInitializer,
    required DartType fieldElementType,
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
    required this.proto,
    required this.protoField,
    required this.config,
    required this.refName,
    required this.protoRefName,
  }) : super.fromFieldElement(fieldElement);

  String get prefix => config.prefix;

  @override
  bool get isRepeated => listParameterType != null;
  bool get renderNullable => isNullable && !isRepeated;

  String get protoFieldName => protoField.name ?? displayName;

  bool get typeHasProtoAnnotation => fieldElementType.hasProto;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;
}
