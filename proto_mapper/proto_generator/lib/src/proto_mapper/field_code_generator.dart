import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';
import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';

import 'field_descriptor.dart';
import 'standalone_field_code_generator.dart';

abstract class FCG {
  String get fromProtoMap;
  String get toProtoMap;
  String get constructorMap;
  String get fromProtoExpression;

  factory FCG.fromFieldDescriptor(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
    required bool useWellKnownTypes,
  }) {
    if (useWellKnownTypes) {
      final fd = WKTFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
      if (fd != null) return fd;
    } else {
      final fd = StandaloneFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
      if (fd != null) return fd;
    }
    return CompositeFieldCodeGenerator.fromFieldDescriptor(
      fieldDescriptor: fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
      useWellKnownTypes: useWellKnownTypes,
    );
  }
}
