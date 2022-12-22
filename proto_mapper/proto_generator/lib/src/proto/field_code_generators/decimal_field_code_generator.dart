import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DecimalFieldCodeGenerator extends CompositeFieldCodeGenerator {
  DecimalFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'bytes';
}
