import '../field_code_generator.dart';

class StringFieldCodeGenerator extends FieldCodeGenerator {
  StringFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => '\'\'';
}
