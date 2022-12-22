import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/external_proto_name.dart';

class GStringFieldCodeGenerator extends WKTFieldCodeGenerator
    implements ExternalProtoNames {
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
