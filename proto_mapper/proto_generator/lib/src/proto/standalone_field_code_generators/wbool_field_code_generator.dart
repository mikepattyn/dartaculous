import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WBoolFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WBoolFieldCodeGenerator(
    FieldDescriptor fieldDescriptor
  ) : super(fieldDescriptor);

  @override
  String get scalarType => 'bool';

  @override
  String renderWrapper() {
    return '''message BoolValue { bool value = 1; }''';
  }

  @override
  String get wrappedType => 'BoolValue';
}