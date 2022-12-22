import 'package:proto_generator/src/proto/field_code_generator.dart';

import '../field_descriptor.dart';

class StringFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  StringFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(
          fieldDescriptor,
          lineNumbers,
        );

  @override
  String get fieldType => 'string';
}
