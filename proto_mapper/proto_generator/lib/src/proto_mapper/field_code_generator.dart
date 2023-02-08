import 'package:decimal/decimal.dart';
import 'package:proto_annotations/config.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import 'field_code_generators/bigint_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_descriptor.dart';
import 'standalone/datetime_field_code_generator.dart';
import 'standalone/duration_field_code_generator.dart';
import 'standalone/generic_field_code_generator.dart';
import 'well_known_types/gbool_field_code_generator.dart';
import 'well_known_types/gdatetime_field_code_generator.dart';
import 'well_known_types/gdouble_field_code_generator.dart';
import 'well_known_types/gduration_field_code_generator.dart';
import 'well_known_types/gint_field_code_generator.dart';
import 'well_known_types/gstring_field_code_generator.dart';

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
      config: config,
    );
    if (fcd != null) return fcd;

    if (config.useWellKnownWrappers) {
      if (fieldDescriptor.fieldElementType.isDartCoreString) {
        return GStringFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
      if (fieldDescriptor.fieldElementType.isDartCoreBool) {
        return GBoolFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
      if (fieldDescriptor.fieldElementType.isDartCoreDouble) {
        return GDoubleFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
      if (fieldDescriptor.fieldElementType.isDartCoreInt) {
        return GIntFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
    }
    if (config.useWellKnownTimestamp &&
        fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return GDateTimeFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
        config: config,
      );
    }
    if (config.useWellKnownDuration &&
        fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      return GDurationFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
        config: config,
      );
    }

    if (fieldDescriptor.fieldElementType.isDartCoreBool ||
        fieldDescriptor.fieldElementType.isDartCoreInt ||
        fieldDescriptor.fieldElementType.isDartCoreString ||
        fieldDescriptor.fieldElementType.isDartCoreDouble) {
      return GenericFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return SDateTimeFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      return SDurationFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
      );
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
  required Config config,
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
      config: config,
    );
  }
  return null;
}
