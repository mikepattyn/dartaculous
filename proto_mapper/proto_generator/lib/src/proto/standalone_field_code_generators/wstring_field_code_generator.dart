import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WStringFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WStringFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => 'string';

  @override
  String renderWrapper() {
    return '''message StringValue { string value = 1; }''';
  }

  @override
  String get wrappedType => 'StringValue';
}
