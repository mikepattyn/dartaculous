import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_descriptor.dart';
import '../wkt_field_code_generator.dart';

class GDurationFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDurationFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoExpression; 
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) {
      return fromProtoNullableExpression;
    }
    return fromProtoNonNullableExpression;
  }

  String get toProtoExpression => '''\$wellknown_duration.Duration(
        seconds: Int64($instanceReference.inSeconds),
        nanos: ($instanceReference.inMicroseconds - $instanceReference.inSeconds * 1000000) * 1000)''';

  String get fromProtoNullableExpression =>
      '''(${protoRef}has${protoFieldName.pascalName}() ? ($fromProtoNonNullableExpression) : null)''';

  String get fromProtoNonNullableExpression => '''Duration(
      seconds: $protoRef$fieldName.seconds.toInt(),
      microseconds: ($protoRef$fieldName.nanos ~/ 1000).toInt())''';
}
