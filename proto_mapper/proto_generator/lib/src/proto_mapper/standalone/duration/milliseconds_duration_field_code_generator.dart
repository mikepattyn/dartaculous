import '../../field_descriptor.dart';
import '../../standalone_field_code_generator.dart';

class MillisecondsDurationFieldCodeGenerator
    extends StandaloneFieldCodeGenerator {
  MillisecondsDurationFieldCodeGenerator(
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
      '''$instanceReference.inMilliseconds.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(milliseconds: instance.$fieldName.toInt())''';
}
