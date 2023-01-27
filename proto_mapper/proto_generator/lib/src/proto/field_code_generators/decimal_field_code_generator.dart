import '../field_code_generator.dart';

class DecimalFieldCodeGenerator extends CompositeFieldCodeGenerator {
  DecimalFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'bytes';
}
