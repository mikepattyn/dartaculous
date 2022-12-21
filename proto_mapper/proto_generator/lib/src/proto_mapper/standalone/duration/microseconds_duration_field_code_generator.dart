import '../../field_descriptor.dart';
import '../../standalone_field_code_generator.dart';

class MicrosecondsDurationFieldCodeGenerator
    extends StandaloneFieldCodeGenerator {
  MicrosecondsDurationFieldCodeGenerator({
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
      '''$instanceReference.inMicroseconds.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(microseconds: instance.$fieldName.toInt())''';
}
