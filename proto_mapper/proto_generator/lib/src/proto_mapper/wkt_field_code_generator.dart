import 'package:proto_annotations/config.dart';

import 'field_code_generators/field_code_generator_identifiers.dart';
import 'well_known_types/gbool_field_code_generator.dart';
import 'well_known_types/gdatetime_field_code_generator.dart';
import 'well_known_types/gdouble_field_code_generator.dart';
import 'well_known_types/gduration_field_code_generator.dart';
import 'well_known_types/gint_field_code_generator.dart';
import 'well_known_types/gstring_field_code_generator.dart';
import 'field_code_generator.dart';
import 'field_descriptor.dart';

abstract class WKTFieldCodeGenerator
    with FieldCodeGeneratorIdentifiers
    implements FieldCodeGenerator {
  WKTFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
  });

  @override
  final FieldDescriptor fieldDescriptor;
  @override
  final String refName;
  @override
  final String protoRefName;
}
