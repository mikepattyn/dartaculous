import '../field_code_generator.dart';

class ListFieldCodeGenerator extends FieldCodeGenerator {
  ListFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'const []';
}
