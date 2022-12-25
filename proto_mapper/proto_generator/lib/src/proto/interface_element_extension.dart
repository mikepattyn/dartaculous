import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/proto_generator.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_descriptor.dart';

extension InterfaceElementExtension on InterfaceElement {
  Iterable<FieldDescriptor> getFieldDescriptors(
    Proto annotation,
    String defaultPrefix, {
    bool forEnum = false,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: false);
    final fieldDescriptors = fieldSet.map((fieldElement) {
      var relevantFieldType = fieldElement.type;
      if (relevantFieldType.isIterable || relevantFieldType.isList) {
        relevantFieldType =
            (relevantFieldType as InterfaceType).typeArguments.first;
      }
      var annotations = getAnnotationsByName(relevantFieldType, 'Proto');
      if (annotations.isNotEmpty) {
        final readAnnotation =
            ConstantReader(annotations.first.computeConstantValue());
        var hydratedAnnotation = readAnnotation.hydrateAnnotation(
          prefix: defaultPrefix,
          useProtoFieldNamingConventions:
              annotation.useProtoFieldNamingConventions ?? false,
        );
        return FieldDescriptor.fromFieldElement(
            fieldElement, hydratedAnnotation.proto, forEnum);
      } else {
        return FieldDescriptor.fromFieldElement(
            fieldElement, annotation, forEnum);
      }
    }).where((element) => element.isProtoIncluded);
    return fieldDescriptors;
  }
}