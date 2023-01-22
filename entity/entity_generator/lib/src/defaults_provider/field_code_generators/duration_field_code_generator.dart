import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DurationFieldCodeGenerator extends FieldCodeGenerator {
  DurationFieldCodeGenerator(super.fieldDescriptor, super.isAbstract);

  @override
  String get defaultExpression => 'Duration.zero';
}
