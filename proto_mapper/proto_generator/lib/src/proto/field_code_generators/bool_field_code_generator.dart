import '../field_code_generator.dart';
import '../field_descriptor.dart';

class BoolFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  BoolFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'bool';
}
