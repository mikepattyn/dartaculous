import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_generator/proto_generator.dart';
import 'package:proto_generator/src/common/constant_reader_extension.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_descriptor.dart';

extension ClassElementExtensions on ClassElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
    required Proto annotation,
    required Config config,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: false);
    final fieldDescriptors = <FieldDescriptor>[];
    for (final fieldElement in fieldSet) {
      final protoField = _getProtoFieldAnnotation(fieldElement);
      if (protoField == null) {
        continue;
      }
      final relevantFieldType = _getRelevantFieldType(fieldElement);
      final protoReflected = _getProtoReflected(relevantFieldType);
      final fd = FieldDescriptor.fromFieldElement(
        fieldElement: fieldElement,
        config: config,
        protoAnnotation: protoReflected?.proto ?? annotation,
        protoFieldAnnotation: protoField,
        forEnum: false,
      );
      fieldDescriptors.add(fd);
    }
    return fieldDescriptors;
  }
}

extension EnumElementExtensions on EnumElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
    required Proto annotation,
    required Config config,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: false);
    final fieldDescriptors = <FieldDescriptor>[];
    int index = 0;
    for (final fieldElement in fieldSet) {
      final protoField = _getProtoFieldAnnotation(fieldElement);
      final relevantFieldType = _getRelevantFieldType(fieldElement);
      final protoReflected = _getProtoReflected(relevantFieldType);
      final fd = FieldDescriptor.fromFieldElement(
        fieldElement: fieldElement,
        config: config,
        protoAnnotation: protoReflected?.proto ?? annotation,
        protoFieldAnnotation: protoField ?? ProtoField(index++),
        forEnum: true,
      );
      fieldDescriptors.add(fd);
    }
    return fieldDescriptors;
  }
}

DartType _getRelevantFieldType(FieldElement fieldElement) {
  var relevantFieldType = fieldElement.type;
  if (relevantFieldType.isIterable || relevantFieldType.isList) {
    relevantFieldType =
        (relevantFieldType as InterfaceType).typeArguments.first;
  }
  return relevantFieldType;
}

ProtoReflected? _getProtoReflected(DartType relevantFieldType) {
  var annotations = getAnnotationsByName(relevantFieldType, 'Proto');
  if (annotations.isEmpty) return null;

  final readAnnotation =
      ConstantReader(annotations.first.computeConstantValue());
  var hydratedAnnotation = readAnnotation.hydrateAnnotation();
  return hydratedAnnotation;
}

const _protoFieldChecker = TypeChecker.fromRuntime(ProtoField);

ProtoField? _getProtoFieldAnnotation(FieldElement fieldElement) {
  final annotation = _protoFieldChecker.getFieldAnnotation(fieldElement);
  if (annotation == null) {
    return null;
  }
  final name = annotation.getField('name')!.toStringValue();
  final numberObj = annotation.getField('number')!;

  final number = numberObj.toIntValue()!;

  var ret = ProtoField(
    number,
    name: name,
  );
  return ret;
}
