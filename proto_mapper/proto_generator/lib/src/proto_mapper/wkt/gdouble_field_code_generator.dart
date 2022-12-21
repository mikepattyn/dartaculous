import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';

import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class GDoubleFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDoubleFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
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
