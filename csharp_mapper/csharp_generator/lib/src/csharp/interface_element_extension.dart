import 'package:analyzer/dart/element/element.dart';
import 'package:csharp_annotations/config.dart';
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_descriptor.dart';

extension ClassElementExtensions on ClassElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
    required CSharp annotation,
    required Config config,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: false);
    final fieldDescriptors = <FieldDescriptor>[];
    for (final fieldElement in fieldSet) {
      final ignoreField = _getIgnoreAnnotation(fieldElement);
      final fd = FieldDescriptor.fromFieldElement(
        fieldElement: fieldElement,
        config: config,
        csharpAnnotation: annotation,
        ignoreAnnotation: ignoreField,
        forEnum: false,
      );
      fieldDescriptors.add(fd);
    }
    return fieldDescriptors;
  }
}

extension EnumElementExtensions on EnumElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
    required CSharp annotation,
    required Config config,
  }) =>
      getSortedFieldSet(includeInherited: false)
          .map((fieldElement) => FieldDescriptor.fromFieldElement(
                fieldElement: fieldElement,
                config: config,
                forEnum: true,
                csharpAnnotation: annotation,
              ));
}

const _ignoreFieldChecker = TypeChecker.fromRuntime(CSharpIgnore);

CSharpIgnore? _getIgnoreAnnotation(FieldElement fieldElement) {
  final annotation = _ignoreFieldChecker.getFieldAnnotation(fieldElement);
  if (annotation == null) {
    return null;
  }
  return const CSharpIgnore();
}
