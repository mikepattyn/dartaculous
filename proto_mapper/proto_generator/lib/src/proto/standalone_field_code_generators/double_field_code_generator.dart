import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DoubleFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  DoubleFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get fieldType => 'double';
}
