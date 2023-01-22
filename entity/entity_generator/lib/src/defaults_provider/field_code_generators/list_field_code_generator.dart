import '../field_code_generator.dart';
import '../field_descriptor.dart';

class ListFieldCodeGenerator extends FieldCodeGenerator {
  ListFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'const []';
}
