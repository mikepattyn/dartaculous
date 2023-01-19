import '../field_code_generator.dart';
import '../field_descriptor.dart';

class BoolFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  BoolFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get fieldType => 'bool';
}
