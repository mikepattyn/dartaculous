import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/external_proto_name.dart';

class GDateTimeFieldCodeGenerator extends WKTFieldCodeGenerator
    implements ExternalProtoNames {
  GDateTimeFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.Timestamp';

  @override
  String get scalarType => '';

  @override
  String get wellKnownProtoPath => 'google/protobuf/timestamp.proto';
}
