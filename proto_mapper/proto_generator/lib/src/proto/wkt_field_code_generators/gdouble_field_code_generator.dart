import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDoubleFieldCodeGenerator extends WKTFieldCodeGenerator
 {
  GDoubleFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.DoubleValue';

  @override
  String get scalarType => 'double';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
