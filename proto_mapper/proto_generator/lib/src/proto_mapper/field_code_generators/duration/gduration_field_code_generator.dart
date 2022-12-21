import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class GDurationFieldCodeGenerator extends FieldCodeGenerator {
  GDurationFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoExpression => '''\$wellknown_duration.Duration(
        seconds: Int64($instanceReference.inSeconds),
        nanos: ($instanceReference.inMicroseconds - $instanceReference.inSeconds * 1000000) * 1000)''';

  @override
  String get hasValueToProtoMap => '';

  @override
  String get fromProtoNullableExpression =>
      '''(${ref}has${protoFieldName.pascalName}() ? ($fromProtoNonNullableExpression) : null)''';

  @override
  String get fromProtoNonNullableExpression => '''Duration(
      seconds: instance.$fieldName.seconds.toInt(),
      microseconds: (instance.$fieldName.nanos ~/ 1000).toInt())''';
}
