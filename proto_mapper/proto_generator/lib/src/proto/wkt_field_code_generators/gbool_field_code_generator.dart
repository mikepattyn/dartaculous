import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/imports.dart';

class GBoolFieldCodeGenerator extends WKTFieldCodeGenerator implements Imports {
  GBoolFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.BoolValue';

  @override
  String get scalarType => 'bool';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
