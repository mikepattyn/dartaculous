import '../field_code_generator.dart';

class IntFieldCodeGenerator extends FieldCodeGenerator {
  IntFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => '0';
}
