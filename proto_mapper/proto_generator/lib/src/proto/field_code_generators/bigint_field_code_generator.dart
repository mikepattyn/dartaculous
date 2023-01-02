import '../field_code_generator.dart';
import '../field_descriptor.dart';

class BigIntFieldCodeGenerator extends CompositeFieldCodeGenerator {
  BigIntFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
  ) : super(fieldDescriptor);

  @override
  String get fieldType => 'bytes';
}
