import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WInt32FieldCodeGenerator extends WrappedFieldCodeGenerator {
  WInt32FieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => 'int32';

  @override
  String renderWrapper() {
    return '''message Int32Value { int32 value = 1; }''';
  }

  @override
  String get wrappedType => 'Int32Value';
}
