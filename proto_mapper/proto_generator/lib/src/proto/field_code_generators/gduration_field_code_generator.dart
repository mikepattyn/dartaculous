import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class GDurationFieldCodeGenerator extends FieldCodeGenerator
    implements ExternalProtoNames {
  GDurationFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'google.protobuf.Duration';

  @override
  Iterable<String>? get externalProtoNames {
    return ['google/protobuf/duration.proto'];
  }
}
