import '../field_code_generator.dart';
import '../field_descriptor.dart';

class TimestampFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  TimestampFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'int64';
}
