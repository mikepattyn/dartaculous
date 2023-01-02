import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_descriptor.dart';

class SDurationFieldCodeGenerator extends WKTFieldCodeGenerator {
  SDurationFieldCodeGenerator({
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

  String get toProtoExpression =>
      '''Int64($instanceReference.inMicroseconds)''';

  String get fromProtoNonNullableExpression =>
      '''Duration(microseconds: $protoRef$fieldName.toInt())''';

  String get fromProtoNullableExpression =>
      '''(${protoRef}has${protoFieldName.pascalName}() ? Duration(microseconds: $protoRef$fieldName.value.toInt()) : null)''';

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) return fromProtoNullableExpression;
    return fromProtoNonNullableExpression;
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = Int64Value(value: $toProtoExpression);
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';
}
