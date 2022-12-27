import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDateTimeFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDateTimeFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.Timestamp';

  @override
  String get scalarType => '';

  @override
  String get wellKnownProtoPath => 'google/protobuf/timestamp.proto';
}
