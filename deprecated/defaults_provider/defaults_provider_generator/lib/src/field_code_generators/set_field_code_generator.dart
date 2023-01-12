import '../field_code_generator.dart';
import '../field_descriptor.dart';

class SetFieldCodeGenerator extends FieldCodeGenerator {
  SetFieldCodeGenerator(FieldDescriptor fieldDescriptor, bool isAbstract)
      : super(fieldDescriptor, isAbstract);

  @override
  String get defaultExpression => 'const {}';
}
