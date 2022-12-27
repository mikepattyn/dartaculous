import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WTimestampFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WTimestampFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get scalarType => '';

  @override
  String renderWrapper() {
    return '''message Timestamp { 
  int64 seconds = 1; 
  int32 nanos = 2;
}''';
  }

  @override
  String get wrappedType => 'Duration';
}
