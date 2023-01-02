import 'package:proto_annotations/proto_annotations.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class WIntFieldCodeGenerator extends WrappedFieldCodeGenerator {
  WIntFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    required this.config,
  }) : super(fieldDescriptor);

  final Config config;

  IntPrecision get precision {
    final annotated = fieldDescriptor.protoFieldAnnotation.intPrecision;
    if (annotated != null) {
      return annotated;
    }
    return config.defaultIntPrecision;
  }

  @override
  String get scalarType => precision == IntPrecision.int32 ? 'int32' : 'int64';

  @override
  String renderWrapper() {
    return '''message $wrappedType { $scalarType value = 1; }''';
  }

  @override
  String get wrappedType =>
      precision == IntPrecision.int32 ? 'Int32Value' : 'Int32Value';
}
