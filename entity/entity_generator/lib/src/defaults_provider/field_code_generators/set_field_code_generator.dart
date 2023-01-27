import '../field_code_generator.dart';

class SetFieldCodeGenerator extends FieldCodeGenerator {
  SetFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'const {}';
}
