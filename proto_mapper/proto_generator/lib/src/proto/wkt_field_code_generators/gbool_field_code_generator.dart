import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/external_proto_name.dart';

class GBoolFieldCodeGenerator extends WKTFieldCodeGenerator
    implements ExternalProtoNames {
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
