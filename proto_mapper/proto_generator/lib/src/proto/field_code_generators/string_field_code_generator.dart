import '../field_descriptor.dart';
import 'generic_field_code_generator.dart';

class StringFieldCodeGenerator extends GenericFieldCodeGenerator {
  StringFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(
          fieldDescriptor,
          lineNumbers,
        );
}
