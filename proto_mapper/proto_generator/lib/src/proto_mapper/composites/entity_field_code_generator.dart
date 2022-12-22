import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_descriptor.dart';

class EntityFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EntityFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoExpression =>
      ''' const \$${fieldDescriptor.fieldElementTypeName}ProtoMapper().toProto($instanceReference)''';

  @override
  String get fromProtoExpression =>
      'const \$${fieldDescriptor.fieldElementTypeName}ProtoMapper().fromProto($ref$fieldName)';

  @override
  String get fromProtoNullableExpression =>
      '(${ref}has${protoFieldName.pascalName}() ? const \$${fieldDescriptor.fieldElementTypeName}ProtoMapper().fromProto($ref$fieldName) : null)';
}
