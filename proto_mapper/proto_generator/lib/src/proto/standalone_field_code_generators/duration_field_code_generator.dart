import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DurationFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  DurationFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'int64';
}
