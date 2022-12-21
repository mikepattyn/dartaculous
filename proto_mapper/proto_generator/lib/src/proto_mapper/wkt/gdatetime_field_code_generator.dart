import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class GDateTimeFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDateTimeFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = StandaloneFieldCodeGenerator.defaultRefName,
    String protoRefName = StandaloneFieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get hasValueToProtoMap => '';

  @override
  String get toProtoExpression =>
      '''\$wellknown_timestamp.Timestamp.fromDateTime($instanceReference)''';

  @override
  String get fromProtoNonNullableExpression =>
      '''instance.$fieldName.toDateTime()''';

  @override
  String get fromProtoNullableExpression =>
      '''(${ref}has${protoFieldName.pascalName}() ? ($fromProtoNonNullableExpression) : null)''';
}
