import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_descriptor.dart';
import '../wkt_field_code_generator.dart';

class GDurationFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDurationFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    required String refName,
    required String protoRefName,
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
