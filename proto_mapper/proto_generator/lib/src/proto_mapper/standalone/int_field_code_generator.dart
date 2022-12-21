import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class IntFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  IntFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
}
