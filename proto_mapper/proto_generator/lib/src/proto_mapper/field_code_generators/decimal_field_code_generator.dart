import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DecimalFieldCodeGenerator extends FieldCodeGenerator {
  DecimalFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoMap =>
      '$protoRef$protoFieldName = $ref$fieldName.\$toProtoBytes();';

  @override
  String get fromProtoExpression =>
      '${fieldDescriptor.isNullable ? '\$NullableDecimalProtoExtension' : '\$DecimalProtoExtension'}.\$fromProtoBytes($ref$protoFieldName)';
}
