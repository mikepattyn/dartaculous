import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DecimalFieldCodeGenerator extends CompositeFieldCodeGenerator {
  DecimalFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'bytes';
}
