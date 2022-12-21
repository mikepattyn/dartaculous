import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class BigIntFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  BigIntFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
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
      '${fieldDescriptor.isNullable ? '\$NullableBigIntProtoExtension' : '\$BigIntProtoExtension'}.\$fromProtoBytes($ref$protoFieldName)';
}
