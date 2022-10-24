import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDoubleFieldCodeGenerator extends FieldCodeGenerator {
  GDoubleFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get instanceReference => '   $ref$fieldName';

  @override
  String get toProtoNullableExpression =>
      'DoubleValue(value: $toProtoExpression)';

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
          $protoRef$protoFieldName = $toProtoNullableExpression; 
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  @override
  String get fromProtoNullableExpression =>
      '''($ref$protoFieldName.hasValue() ? $fromProtoNonNullableExpression.value : null)''';
}
