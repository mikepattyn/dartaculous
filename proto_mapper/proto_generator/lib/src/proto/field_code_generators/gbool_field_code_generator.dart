import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class GBoolFieldCodeGenerator extends FieldCodeGenerator
    implements ExternalProtoNames {
  GBoolFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType =>
      fieldDescriptor.isNullable ? 'google.protobuf.BoolValue' : 'bool';

  @override
  String? get hasValueLine => null;

  @override
  Iterable<String>? get externalProtoNames {
    return [if (fieldDescriptor.isNullable) 'google/protobuf/wrappers.proto'];
  }
}
