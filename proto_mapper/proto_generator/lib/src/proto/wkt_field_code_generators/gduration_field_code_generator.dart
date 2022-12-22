import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/external_proto_name.dart';

class GDurationFieldCodeGenerator extends WKTFieldCodeGenerator
    implements ExternalProtoNames {
  GDurationFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.Duration';
  @override
  String get wellKnownProtoPath => 'google/protobuf/duration.proto';

  @override
  String get scalarType => '';
}
