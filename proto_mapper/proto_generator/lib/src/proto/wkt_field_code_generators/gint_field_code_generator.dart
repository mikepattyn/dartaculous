import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/external_proto_name.dart';

class GIntFieldCodeGenerator extends WKTFieldCodeGenerator
    implements ExternalProtoNames {
  GIntFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.Int32Value';

  @override
  String get scalarType => 'int32';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
