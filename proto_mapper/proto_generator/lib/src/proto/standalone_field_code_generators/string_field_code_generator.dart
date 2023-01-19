import '../field_code_generator.dart';
import '../field_descriptor.dart';

class StringFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  StringFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get fieldType => 'string';
}
