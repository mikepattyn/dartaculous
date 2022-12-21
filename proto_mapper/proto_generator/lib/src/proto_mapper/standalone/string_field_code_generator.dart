import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class StringFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  StringFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
}
