import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DoubleFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  DoubleFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'double';
}
