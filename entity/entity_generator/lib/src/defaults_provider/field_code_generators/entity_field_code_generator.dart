import 'package:analyzer/dart/element/element.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class EntityFieldCodeGenerator extends FieldCodeGenerator {
  EntityFieldCodeGenerator(FieldDescriptor fieldDescriptor, bool isAbstract)
      : super(fieldDescriptor, isAbstract);

  @override
  String get defaultExpression => fieldDescriptor.fieldElementType.element
              is ClassElement &&
          (fieldDescriptor.fieldElementType.element as ClassElement).isAbstract
      ? '''throw UnimplementedError()'''
      : '''\$${fieldDescriptor.fieldElementTypeName}DefaultsProvider().createWithDefaults()''';
}
