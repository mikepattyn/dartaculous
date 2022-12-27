import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GIntFieldCodeGenerator extends WKTFieldCodeGenerator {
  GIntFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.Int32Value';

  @override
  String get scalarType => 'int32';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
