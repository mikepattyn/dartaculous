import '../../field_descriptor.dart';
import '../../standalone_field_code_generator.dart';

class MillisecondsDurationFieldCodeGenerator
    extends StandaloneFieldCodeGenerator {
  MillisecondsDurationFieldCodeGenerator({
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
      '''$instanceReference.inMilliseconds.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(milliseconds: instance.$fieldName.toInt())''';
}
