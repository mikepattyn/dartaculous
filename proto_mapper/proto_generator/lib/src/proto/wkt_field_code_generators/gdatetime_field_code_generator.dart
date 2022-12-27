import '../field_code_generator.dart';
import '../field_descriptor.dart';
import '../field_code_generators/imports.dart';

class GDateTimeFieldCodeGenerator extends WKTFieldCodeGenerator
    implements Imports {
  GDateTimeFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get wellKnownType => 'google.protobuf.Timestamp';

  @override
  String get scalarType => '';

  @override
  String get wellKnownProtoPath => 'google/protobuf/timestamp.proto';
}
