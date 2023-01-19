import 'package:proto_generator/src/proto_mapper/standalone_field_code_generator.dart';

import '../field_descriptor.dart';

class GenericFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  GenericFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
}
