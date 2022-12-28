import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final MapProto protoMapperAnnotation;
  final ProtoField? protoFieldAnnotation;

  FieldDescriptor(
    this.protoMapperAnnotation, {
    required String displayName,
    required String name,
    required bool isFinal,
    required bool isLate,
    required bool hasInitializer,
    required DartType fieldElementType,
    this.protoFieldAnnotation,
  }) : super(
          displayName: displayName,
          name: name,
          isFinal: isFinal,
          isLate: isLate,
          hasInitializer: hasInitializer,
          fieldElementType: fieldElementType,
        );

  FieldDescriptor.fromFieldElement(
    FieldElement fieldElement,
    MapProto mapProtoBase,
  )   : protoMapperAnnotation = mapProtoBase,
        protoFieldAnnotation = _getProtoFieldAnnotation(fieldElement),
        super.fromFieldElement(fieldElement);

  String get prefix => protoMapperAnnotation.prefix ?? '';

  @override
  bool get isRepeated => listParameterType != null;
  bool get renderNullable => isNullable && !isRepeated;

  String get protoFieldName => protoFieldAnnotation?.name ?? displayName;

  bool get typeHasMapProtoAnnotation => fieldElementType.hasMapProto;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;

  TimePrecision get dateTimePrecision =>
      protoMapperAnnotation.dateTimePrecision ?? TimePrecision.microseconds;

  TimePrecision get durationPrecision =>
      protoMapperAnnotation.durationPrecision ?? TimePrecision.microseconds;
}

const _protoFieldChecker = TypeChecker.fromRuntime(ProtoField);

ProtoField? _getProtoFieldAnnotation(FieldElement fieldElement) {
  var annotation = _protoFieldChecker.getFieldAnnotation(fieldElement);
  if (annotation == null) return null;
  var name = annotation.getField('name')!.toStringValue();
  var number = annotation.getField('number')!.toIntValue()!;
  var ret = ProtoField(number, name: name);
  return ret;
}
