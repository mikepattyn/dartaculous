import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDurationFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDurationFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.Duration';
  @override
  String get wellKnownProtoPath => 'google/protobuf/duration.proto';

  @override
  String get scalarType => '';
}
