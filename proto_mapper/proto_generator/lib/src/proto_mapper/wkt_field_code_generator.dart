import 'well_known_types/gbool_field_code_generator.dart';
import 'well_known_types/gdatetime_field_code_generator.dart';
import 'well_known_types/gdouble_field_code_generator.dart';
import 'well_known_types/gduration_field_code_generator.dart';
import 'well_known_types/gint_field_code_generator.dart';
import 'well_known_types/gstring_field_code_generator.dart';
import 'field_code_generator.dart';
import 'field_descriptor.dart';

abstract class WKTFieldCodeGenerator implements FieldCodeGenerator {
  final FieldDescriptor fieldDescriptor;
  final String refName;
  final String protoRefName;

  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';

  WKTFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
  });

  String get fieldName => fieldDescriptor.displayName;
  String get protoFieldName => fieldDescriptor.protoFieldName;

  static FieldCodeGenerator? fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) {
    if (fieldDescriptor.fieldElementType.isDartCoreString) {
      return GStringFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreBool) {
      return GBoolFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreDouble) {
      return GDoubleFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreInt) {
      return GIntFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return GDateTimeFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      return GDurationFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }

    return null;
  }
}
