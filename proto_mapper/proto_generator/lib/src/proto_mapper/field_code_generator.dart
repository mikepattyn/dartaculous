import 'package:decimal/decimal.dart';
import 'package:proto_annotations/config.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';
import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';

import 'field_code_generators/bigint_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_descriptor.dart';
import 'standalone_field_code_generator.dart';

abstract class FieldCodeGenerator {
  String get toProtoMap;
  String get fromProtoMap;

  static const defaultRefName = 'instance';
  static const defaultProtoRefName = 'proto';

  factory FieldCodeGenerator.fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required Config config,
  }) {
    FieldCodeGenerator? fcd = _getCustomEncodedFieldCodeGenerator(
      fieldDescriptor: fieldDescriptor,
      refName: fieldDescriptor.refName,
      protoRefName: fieldDescriptor.protoRefName,
    );
    if (fcd != null) return fcd;

    if (config.useWellKnownTypes) {
      fcd = WKTFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
        config: config,
      );
      if (fcd != null) return fcd;
    } else {
      fcd = StandaloneFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
      );
      if (fcd != null) return fcd;
    }
    return CompositeFieldCodeGenerator.fromFieldDescriptor(
      fieldDescriptor: fieldDescriptor,
      refName: fieldDescriptor.refName,
      protoRefName: fieldDescriptor.protoRefName,
      config: config,
    );
  }
}

FieldCodeGenerator? _getCustomEncodedFieldCodeGenerator({
  required FieldDescriptor fieldDescriptor,
  required String refName,
  required String protoRefName,
}) {
  if (fieldDescriptor.fieldElementTypeName == (BigInt).toString()) {
    return BigIntFieldCodeGenerator(
      fieldDescriptor: fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
    );
  }
  if (fieldDescriptor.fieldElementTypeName == (Decimal).toString()) {
    return DecimalFieldCodeGenerator(
      fieldDescriptor: fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
    );
  }
  return null;
}
