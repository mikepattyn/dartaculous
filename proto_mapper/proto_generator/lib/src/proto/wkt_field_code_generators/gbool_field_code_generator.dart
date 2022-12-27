import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GBoolFieldCodeGenerator extends WKTFieldCodeGenerator {
  GBoolFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.BoolValue';

  @override
  String get scalarType => 'bool';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
