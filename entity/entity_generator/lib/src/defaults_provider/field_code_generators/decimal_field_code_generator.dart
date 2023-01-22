import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DecimalFieldCodeGenerator extends FieldCodeGenerator {
  DecimalFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'Decimal.zero';
}
