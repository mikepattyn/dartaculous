import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import '../field_descriptor.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EnumFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        ) {
    _prefix = fieldDescriptor.prefix;
  }

  String? _prefix;

  @override
  String get fromProtoNonNullableExpression =>
      '''${fieldDescriptor.fieldElementTypeName}.values[$ref$fieldName.value]''';

  @override
  String get toProtoExpression =>
      '''$_prefix${fieldDescriptor.fieldElementTypeName}
    .valueOf($instanceReference.index)!''';
}
