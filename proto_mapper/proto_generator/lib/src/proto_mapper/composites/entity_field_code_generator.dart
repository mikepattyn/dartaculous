import 'package:proto_annotations/config.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_descriptor.dart';

class EntityFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EntityFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
    required super.config,
  });

  @override
  String get toProtoExpression =>
      ''' const \$${fieldDescriptor.fieldElementTypeName}ProtoMapper().toProto($instanceReference)''';

  @override
  String get fromProtoExpression =>
      'const \$${fieldDescriptor.fieldElementTypeName}ProtoMapper().fromProto($protoRef$protoFieldName)';

  @override
  String get fromProtoNullableExpression =>
      '(${protoRef}has${protoFieldName.pascalName}() ? const \$${fieldDescriptor.fieldElementTypeName}ProtoMapper().fromProto($protoRef$protoFieldName) : null)';
}
