import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GStringFieldCodeGenerator extends WKTFieldCodeGenerator {
  GStringFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.StringValue';

  @override
  String get scalarType => 'string';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
