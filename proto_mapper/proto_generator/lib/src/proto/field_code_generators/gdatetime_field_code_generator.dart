import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class GDateTimeFieldCodeGenerator extends FieldCodeGenerator
    implements ExternalProtoNames {
  GDateTimeFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'google.protobuf.Timestamp';

  @override
  String? get hasValueLine =>
      super.fieldDescriptor.isRepeated ? super.hasValueLine : null;

  @override
  Iterable<String>? get externalProtoNames {
    return ['google/protobuf/timestamp.proto'];
  }
}
