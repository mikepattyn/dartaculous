import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDurationFieldCodeGenerator extends WKTFieldCodeGenerator {
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
