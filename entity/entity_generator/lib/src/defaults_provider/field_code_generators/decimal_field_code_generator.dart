import '../field_code_generator.dart';

class DecimalFieldCodeGenerator extends FieldCodeGenerator {
  DecimalFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'Decimal.zero';
}
