import '../../field_descriptor.dart';
import '../../standalone_field_code_generator.dart';

class MicrosecondsDurationFieldCodeGenerator
    extends StandaloneFieldCodeGenerator {
  MicrosecondsDurationFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoExpression =>
      '''$instanceReference.inMicroseconds.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(microseconds: instance.$fieldName.toInt())''';
}
