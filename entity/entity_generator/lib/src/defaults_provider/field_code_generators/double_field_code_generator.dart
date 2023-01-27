import '../field_code_generator.dart';

class DoubleFieldCodeGenerator extends FieldCodeGenerator {
  DoubleFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => '0';
}
