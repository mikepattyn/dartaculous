import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WInt64FieldCodeGenerator extends WrappedFieldCodeGenerator {
  WInt64FieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => 'int64';

  @override
  String renderWrapper() {
    return '''message Int64Value { int64 value = 1; }''';
  }

  @override
  String get wrappedType => 'Int64Value';
}
