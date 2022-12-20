import 'package:proto_generator/src/proto/field_code_generators/bigint_field_code_generator.dart';
import 'package:proto_generator/src/proto_common.dart';

import 'field_code_generators/bool_field_code_generator.dart';
import 'field_code_generators/datetime_field_code_generator.dart';
import 'field_code_generators/double_field_code_generator.dart';
import 'field_code_generators/duration_field_code_generator.dart';
import 'field_code_generators/entity_field_code_generator.dart';
import 'field_code_generators/gbool_field_code_generator.dart';
import 'field_code_generators/gdatetime_field_code_generator.dart';
import 'field_code_generators/gdouble_field_code_generator.dart';
import 'field_code_generators/gduration_field_code_generator.dart';
import 'field_code_generators/generic_field_code_generator.dart';
import 'field_code_generators/gint_field_code_generator.dart';
import 'field_code_generators/gstring_field_code_generator.dart';
import 'field_code_generators/int_field_code_generator.dart';
import 'field_code_generators/map_field_code_generator.dart';
import 'field_code_generators/string_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class FieldCodeGenerator {
  final FieldDescriptor fieldDescriptor;
  late final int lineNumber;
  late final int? hasValueLineNumber;

  FieldCodeGenerator(
    this.fieldDescriptor,
    List<int> lineNumbers,
  ) {
    lineNumber = fieldDescriptor.number ?? _nextAvailable(lineNumbers);
    final hasValueLineNum = fieldDescriptor.isNullable
        ? (fieldDescriptor.hasValueNumber ?? _nextAvailable(lineNumbers))
        : null;
    hasValueLineNumber = hasValueLineNum;
  }

  String get fieldLine =>
      '$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';

  String? get hasValueLine => hasValueLineNumber != null
      ? 'bool ${fieldDescriptor.protoFieldName}'
          '${fieldDescriptor.useProtoFieldNamingConventions ? '_has_value' : 'HasValue'} = $hasValueLineNumber;'
      : null;

  String? get fieldType;

  factory FieldCodeGenerator.fromFieldDescriptor(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
    bool useWellKnownTypes,
  ) {
    final type = fieldDescriptor.itemType;
    final typeName =
        fieldDescriptor.itemType.getDisplayString(withNullability: false);

    if (type.isDartCoreString) {
      return fieldDescriptor.fieldElementType.isDartCoreString &&
              useWellKnownTypes
          ? GStringFieldCodeGenerator(fieldDescriptor, lineNumbers)
          : StringFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreBool) {
      return fieldDescriptor.fieldElementType.isDartCoreBool &&
              useWellKnownTypes
          ? GBoolFieldCodeGenerator(fieldDescriptor, lineNumbers)
          : BoolFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreInt) {
      return fieldDescriptor.fieldElementType.isDartCoreInt && useWellKnownTypes
          ? GIntFieldCodeGenerator(fieldDescriptor, lineNumbers)
          : IntFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreDouble) {
      return fieldDescriptor.fieldElementType.isDartCoreDouble &&
              useWellKnownTypes
          ? GDoubleFieldCodeGenerator(fieldDescriptor, lineNumbers)
          : DoubleFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (BigInt).toString()) {
      return BigIntFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (DateTime).toString()) {
      return useWellKnownTypes
          ? GDateTimeFieldCodeGenerator(fieldDescriptor, lineNumbers)
          : DateTimeFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (Duration).toString()) {
      return useWellKnownTypes
          ? GDurationFieldCodeGenerator(fieldDescriptor, lineNumbers)
          : DurationFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.hasProto) {
      return EntityFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreMap) {
      return MapFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    return GenericFieldCodeGenerator(fieldDescriptor, lineNumbers);
  }
}

int _nextAvailable(List<int> numbers) {
  int i = 0;
  while (numbers.contains(++i)) {}
  numbers.add(i);
  return i;
}
