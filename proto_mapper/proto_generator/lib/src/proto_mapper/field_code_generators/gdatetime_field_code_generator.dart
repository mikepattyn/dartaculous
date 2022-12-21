import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GDateTimeFieldCodeGenerator extends FieldCodeGenerator {
  GDateTimeFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
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
