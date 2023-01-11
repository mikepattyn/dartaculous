import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WDoubleFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WDoubleFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => 'double';

  @override
  String renderWrapper() {
    return '''message DoubleValue { double value = 1; }''';
  }

  @override
  String get wrappedType => 'DoubleValue';
}
