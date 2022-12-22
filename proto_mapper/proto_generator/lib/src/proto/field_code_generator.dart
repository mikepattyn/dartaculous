import 'package:decimal/decimal.dart';
import 'package:proto_generator/src/proto/field_code_generators/bigint_field_code_generator.dart';
import 'package:proto_generator/src/proto/field_code_generators/enum_field_code_generator.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'field_code_generators/bool_field_code_generator.dart';
import 'field_code_generators/datetime_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_code_generators/double_field_code_generator.dart';
import 'field_code_generators/duration_field_code_generator.dart';
import 'field_code_generators/entity_field_code_generator.dart';
import 'wkt_field_code_generators/gbool_field_code_generator.dart';
import 'wkt_field_code_generators/gdatetime_field_code_generator.dart';
import 'wkt_field_code_generators/gdouble_field_code_generator.dart';
import 'wkt_field_code_generators/gduration_field_code_generator.dart';
import 'wkt_field_code_generators/gint_field_code_generator.dart';
import 'wkt_field_code_generators/gstring_field_code_generator.dart';
import 'field_code_generators/int_field_code_generator.dart';
import 'field_code_generators/map_field_code_generator.dart';
import 'field_code_generators/string_field_code_generator.dart';
import 'field_descriptor.dart';

part 'standalone_field_code_generator.dart';
part 'composite_field_code_generator.dart';
part 'field_code_generator_mixin.dart';
part 'wkt_field_code_generator.dart';

abstract class FieldCodeGenerator {
  String render(String indent);

  static FieldCodeGenerator fromFieldDescriptor(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
    bool useWellKnownTypes,
  ) {
    final type = fieldDescriptor.itemType;
    final typeName =
        fieldDescriptor.itemType.getDisplayString(withNullability: false);

    if (useWellKnownTypes) {
      if (type.isDartCoreString) {
        return GStringFieldCodeGenerator(fieldDescriptor, lineNumbers);
      }
      if (type.isDartCoreBool) {
        return GBoolFieldCodeGenerator(fieldDescriptor, lineNumbers);
      }
      if (type.isDartCoreInt) {
        return GIntFieldCodeGenerator(fieldDescriptor, lineNumbers);
      }
      if (type.isDartCoreDouble) {
        return GDoubleFieldCodeGenerator(fieldDescriptor, lineNumbers);
      }
      if (typeName == (DateTime).toString()) {
        return GDateTimeFieldCodeGenerator(fieldDescriptor, lineNumbers);
      }
      if (typeName == (Duration).toString()) {
        return GDurationFieldCodeGenerator(fieldDescriptor, lineNumbers);
      }
    }

    if (type.isDartCoreString) {
      StringFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreBool) {
      return BoolFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreInt) {
      return IntFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreDouble) {
      return DoubleFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (BigInt).toString()) {
      return BigIntFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (Decimal).toString()) {
      return DecimalFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (DateTime).toString()) {
      return DateTimeFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (typeName == (Duration).toString()) {
      return DurationFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (fieldDescriptor.typeIsEnum) {
      return EnumFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.hasProto) {
      return EntityFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    if (type.isDartCoreMap) {
      return MapFieldCodeGenerator(fieldDescriptor, lineNumbers);
    }
    throw UnimplementedError('Type not supported ${fieldDescriptor.itemType}');
  }
}
