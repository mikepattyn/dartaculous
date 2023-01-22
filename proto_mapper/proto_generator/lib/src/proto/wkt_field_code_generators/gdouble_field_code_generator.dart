import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDoubleFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDoubleFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.DoubleValue';

  @override
  String get scalarType => 'double';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
