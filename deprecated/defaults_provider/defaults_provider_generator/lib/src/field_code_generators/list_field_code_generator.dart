import '../field_code_generator.dart';
import '../field_descriptor.dart';

class ListFieldCodeGenerator extends FieldCodeGenerator {
  ListFieldCodeGenerator(FieldDescriptor fieldDescriptor, bool isAbstract)
      : super(fieldDescriptor, isAbstract);

  @override
  String get defaultExpression => 'const []';
}
