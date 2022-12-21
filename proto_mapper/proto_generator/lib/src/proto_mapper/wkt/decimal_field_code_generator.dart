import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';
import '../wkt_field_code_generator.dart';

class DecimalFieldCodeGenerator extends WKTFieldCodeGenerator {
  DecimalFieldCodeGenerator(
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
      '${fieldDescriptor.isNullable ? '\$NullableDecimalProtoExtension' : '\$DecimalProtoExtension'}.\$fromProtoBytes($ref$protoFieldName)';
}
