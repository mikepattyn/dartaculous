import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WTimestampFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WTimestampFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => 'int64';

  @override
  String renderWrapper() {
    return '''message $wrappedType { $scalarType value = 1; }''';
  }

  @override
  String get wrappedType => 'Int64Value';
}
