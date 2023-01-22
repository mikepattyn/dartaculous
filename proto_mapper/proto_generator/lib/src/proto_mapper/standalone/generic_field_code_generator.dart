import 'package:proto_generator/src/proto_mapper/standalone_field_code_generator.dart';

import '../field_descriptor.dart';

class GenericFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  GenericFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
  });
}
