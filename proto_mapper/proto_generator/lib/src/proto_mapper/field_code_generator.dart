import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_mapper/field_code_generators/bigint_field_code_generator.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import 'field_code_generators/bool_field_code_generator.dart';
import 'field_code_generators/datetime_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_code_generators/duration/microseconds_duration_field_code_generator.dart';
import 'field_code_generators/duration/milliseconds_duration_field_code_generator.dart';
import 'field_code_generators/entity_field_code_generator.dart';
import 'field_code_generators/enum_field_code_generator.dart';
import 'field_code_generators/gbool_field_code_generator.dart';
import 'field_code_generators/gdouble_field_code_generator.dart';
import 'field_code_generators/duration/gduration_field_code_generator.dart';
import 'field_code_generators/gdatetime_field_code_generator.dart';
import 'field_code_generators/generic_field_code_generator.dart';
import 'field_code_generators/gint_field_code_generator.dart';
import 'field_code_generators/gstring_field_code_generator.dart';
import 'field_code_generators/int_field_code_generator.dart';
import 'field_code_generators/iterable_field_code_generator.dart';
import 'field_code_generators/list_field_code_generator.dart';
import 'field_code_generators/map_field_code_generator.dart';
import 'field_code_generators/set_field_code_generator.dart';
import 'field_code_generators/string_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class FieldCodeGenerator {
  static const defaultRefName = 'instance';
  static const defaultProtoRefName = 'proto';

  final FieldDescriptor fieldDescriptor;
  final String refName;
  final String protoRefName;

  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';

  FieldCodeGenerator(
    this.fieldDescriptor, {
    this.refName = defaultRefName,
    this.protoRefName = defaultProtoRefName,
  });

  MapProto get mapProtoBase => fieldDescriptor.protoMapperAnnotation;

  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoNullableExpression; 
        }
        $hasValueToProtoMap;
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  String get hasValueToProtoMap =>
      '$protoRef${protoFieldName}HasValue = $ref$fieldName != null';

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';
  String get toProtoExpression => instanceReference;
  String get toProtoNullableExpression => toProtoExpression;

  String get fromProtoMap => '$fieldName = $fromProtoExpression';
  String get constructorMap => '$fieldName: $fromProtoExpression, ';

  String get fromProtoExpression {
    if (fieldDescriptor.isNullable) return fromProtoNullableExpression;
    return fromProtoNonNullableExpression;
  }

  String get fromProtoNullableExpression =>
      '''($ref${protoFieldName}HasValue ? ($fromProtoNonNullableExpression) : null)''';

  String get fromProtoNonNullableExpression => '$ref$protoFieldName';

  String get fieldName => fieldDescriptor.displayName;
  String get protoFieldName => fieldDescriptor.protoFieldName;

  factory FieldCodeGenerator.fromFieldDescriptor(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
    required bool useWellKnownTypes,
  }) {
    if (fieldDescriptor.fieldElementType.isDartCoreString) {
      return useWellKnownTypes
          ? GStringFieldCodeGenerator(
              fieldDescriptor,
              refName: refName,
              protoRefName: protoRefName,
            )
          : StringFieldCodeGenerator(
              fieldDescriptor,
              refName: refName,
              protoRefName: protoRefName,
            );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreBool) {
      return useWellKnownTypes
          ? GBoolFieldCodeGenerator(
              fieldDescriptor,
              refName: refName,
              protoRefName: protoRefName,
            )
          : BoolFieldCodeGenerator(
              fieldDescriptor,
              refName: refName,
              protoRefName: protoRefName,
            );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreDouble &&
        useWellKnownTypes) {
      return GDoubleFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreInt) {
      return useWellKnownTypes
          ? GIntFieldCodeGenerator(
              fieldDescriptor,
              refName: refName,
              protoRefName: protoRefName,
            )
          : IntFieldCodeGenerator(
              fieldDescriptor,
              refName: refName,
              protoRefName: protoRefName,
            );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreList) {
      return ListFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreMap) {
      return MapFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreSet) {
      return SetFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }
    if (fieldDescriptor.typeIsEnum) {
      return EnumFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      if (useWellKnownTypes) {
        return GDateTimeFieldCodeGenerator(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
      }
      return DateTimeFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (BigInt).toString()) {
      return BigIntFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Decimal).toString()) {
      return DecimalFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      if (useWellKnownTypes) {
        return GDurationFieldCodeGenerator(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
      }
      switch (fieldDescriptor.durationPrecision) {
        case TimePrecision.milliseconds:
          return MillisecondsDurationFieldCodeGenerator(
            fieldDescriptor,
            refName: refName,
            protoRefName: protoRefName,
          );
        case TimePrecision.microseconds:
          return MicrosecondsDurationFieldCodeGenerator(
            fieldDescriptor,
            refName: refName,
            protoRefName: protoRefName,
          );
        default:
          throw UnimplementedError();
      }
    }
    if (fieldDescriptor.typeHasMapProtoAnnotation) {
      return EntityFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreIterable &&
        fieldDescriptor.iterableParameterType != null) {
      return IterableFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }

    return GenericFieldCodeGenerator(
      fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
    );
  }
}
