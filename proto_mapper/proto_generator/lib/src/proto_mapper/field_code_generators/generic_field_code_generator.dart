import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class GenericFieldCodeGenerator extends CompositeFieldCodeGenerator {
  GenericFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
}
