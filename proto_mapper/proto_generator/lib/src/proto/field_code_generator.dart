import 'package:decimal/decimal.dart';
import 'package:proto_generator/src/proto/field_code_generators/bigint_field_code_generator.dart';
import 'package:proto_generator/src/proto/field_code_generators/enum_field_code_generator.dart';
import 'package:proto_generator/src/proto/field_code_generators/wrapped.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'field_code_generators/imports.dart';
import 'standalone_field_code_generators/wbool_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_code_generators/entity_field_code_generator.dart';
import 'standalone_field_code_generators/wdouble_field_code_generator.dart';
import 'standalone_field_code_generators/wduration_field_code_generator.dart';
import 'standalone_field_code_generators/wint32_field_code_generator.dart';
import 'standalone_field_code_generators/wstring_field_code_generator.dart';
import 'standalone_field_code_generators/wtimestamp_field_code_generator.dart';
import 'wkt_field_code_generators/gbool_field_code_generator.dart';
import 'wkt_field_code_generators/gdatetime_field_code_generator.dart';
import 'wkt_field_code_generators/gdouble_field_code_generator.dart';
import 'wkt_field_code_generators/gduration_field_code_generator.dart';
import 'wkt_field_code_generators/gint_field_code_generator.dart';
import 'wkt_field_code_generators/gstring_field_code_generator.dart';
import 'field_code_generators/map_field_code_generator.dart';
import 'field_descriptor.dart';

part 'composite_field_code_generator.dart';
part 'field_code_generator_mixin.dart';
part 'wkt_field_code_generator.dart';
part 'wrapped_field_code_generator.dart';

abstract class FieldCodeGenerator {
  String render();

  static FieldCodeGenerator fromFieldDescriptor(
    FieldDescriptor fieldDescriptor,
    bool useWellKnownTypes,
  ) {
    final type = fieldDescriptor.itemType;
    final typeName =
        fieldDescriptor.itemType.getDisplayString(withNullability: false);

    if (useWellKnownTypes) {
      if (type.isDartCoreString) {
        return GStringFieldCodeGenerator(fieldDescriptor);
      }
      if (type.isDartCoreBool) {
        return GBoolFieldCodeGenerator(fieldDescriptor);
      }
      if (type.isDartCoreInt) {
        return GIntFieldCodeGenerator(fieldDescriptor);
      }
      if (type.isDartCoreDouble) {
        return GDoubleFieldCodeGenerator(fieldDescriptor);
      }
      if (typeName == (DateTime).toString()) {
        return GDateTimeFieldCodeGenerator(fieldDescriptor);
      }
      if (typeName == (Duration).toString()) {
        return GDurationFieldCodeGenerator(fieldDescriptor);
      }
    }

    if (type.isDartCoreString) {
      WStringFieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreBool) {
      return WBoolFieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreInt) {
      return WInt32FieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreDouble) {
      return WDoubleFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (BigInt).toString()) {
      return BigIntFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (Decimal).toString()) {
      return DecimalFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (DateTime).toString()) {
      return WTimestampFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (Duration).toString()) {
      return WDurationFieldCodeGenerator(fieldDescriptor);
    }
    if (fieldDescriptor.typeIsEnum) {
      return EnumFieldCodeGenerator(fieldDescriptor);
    }
    if (type.hasProto) {
      return EntityFieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreMap) {
      return MapFieldCodeGenerator(fieldDescriptor);
    }
    return WStringFieldCodeGenerator(fieldDescriptor);
  }
}
