import '../field_code_generator.dart';
import '../field_descriptor.dart';

class BigIntFieldCodeGenerator extends CompositeFieldCodeGenerator {
  BigIntFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'bytes';
}
