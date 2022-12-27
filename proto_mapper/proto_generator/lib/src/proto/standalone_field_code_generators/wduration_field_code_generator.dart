import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WDurationFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WDurationFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => '';

  @override
  String renderWrapper() {
    return '''message Duration { 
  int64 seconds = 1; 
  int32 nanos = 2;
}''';
  }

  @override
  String get wrappedType => 'Duration';
}
