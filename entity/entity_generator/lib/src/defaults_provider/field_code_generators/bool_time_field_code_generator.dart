import '../field_code_generator.dart';

class BoolFieldCodeGenerator extends FieldCodeGenerator {
  BoolFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'false';
}
