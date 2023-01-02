import 'package:proto_annotations/proto_annotations.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GIntFieldCodeGenerator extends WKTFieldCodeGenerator {
  GIntFieldCodeGenerator(
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
  String get wellKnownType => precision == IntPrecision.int32
      ? 'google.protobuf.Int32Value'
      : 'google.protobuf.Int64Value';

  @override
  String get scalarType => precision == IntPrecision.int32 ? 'int32' : 'int64';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
