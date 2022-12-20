import '../field_code_generator.dart';
import '../field_descriptor.dart';

class BigIntFieldCodeGenerator extends FieldCodeGenerator {
  BigIntFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'bytes';

  @override
  final String? hasValueLine = null;
}
