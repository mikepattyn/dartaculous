import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/external_proto_name.dart';

class GDoubleFieldCodeGenerator extends WKTFieldCodeGenerator
    implements ExternalProtoNames {
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
