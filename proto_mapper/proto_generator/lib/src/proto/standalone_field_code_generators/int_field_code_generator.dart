import '../field_code_generator.dart';
import '../field_descriptor.dart';

class IntFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  IntFieldCodeGenerator(FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'int32';
}
