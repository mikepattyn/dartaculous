import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'bigint_field_code_generator.dart';

class DecimalFieldCodeGenerator with X implements FieldCodeGenerator {
  DecimalFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
  });

  @override
  final FieldDescriptor fieldDescriptor;
  @override
  final String refName;
  @override
  final String protoRefName;

  @override
  String get toProtoMap =>
      '$protoRef$protoFieldName = $ref$fieldName.\$toProtoBytes();';

  @override
  String get fromProtoExpression =>
      '${fieldDescriptor.isNullable ? '\$NullableDecimalProtoExtension' : '\$DecimalProtoExtension'}.\$fromProtoBytes($ref$protoFieldName)';
}
