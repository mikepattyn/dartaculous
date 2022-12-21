import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class StringFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  StringFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
}
