import 'package:proto_annotations/proto_annotations.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import 'standalone/bool_field_code_generator.dart';
import 'standalone/datetime_field_code_generator.dart';
import 'standalone/duration/microseconds_duration_field_code_generator.dart';
import 'standalone/string_field_code_generator.dart';
import 'field_code_generator.dart';
import 'standalone/int_field_code_generator.dart';
import 'standalone/duration/milliseconds_duration_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class StandaloneFieldCodeGenerator implements FieldCodeGenerator {
  final FieldDescriptor fieldDescriptor;
  final String refName;
  final String protoRefName;

  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';

  StandaloneFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
  });

  MapProto get mapProtoBase => fieldDescriptor.protoMapperAnnotation;

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoNullableExpression; 
        }
        ${hasValueToProtoMap.isEmpty ? '' : '$hasValueToProtoMap;'}
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  String get hasValueToProtoMap =>
      '$protoRef${protoFieldName}HasValue = $ref$fieldName != null';

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';
  String get toProtoExpression => instanceReference;
  String get toProtoNullableExpression => toProtoExpression;

  @override
  String get fromProtoExpression {
    if (fieldDescriptor.isNullable) return fromProtoNullableExpression;
    return fromProtoNonNullableExpression;
  }

  String get fromProtoNullableExpression =>
      '''($ref${protoFieldName}HasValue ? ($fromProtoNonNullableExpression) : null)''';

  String get fromProtoNonNullableExpression => '$ref$protoFieldName';

  String get fieldName => fieldDescriptor.displayName;
  String get protoFieldName => fieldDescriptor.protoFieldName;

  static StandaloneFieldCodeGenerator? fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) {
    if (fieldDescriptor.fieldElementType.isDartCoreString) {
      return StringFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreBool) {
      return BoolFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreInt) {
      return IntFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return DateTimeFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      switch (fieldDescriptor.durationPrecision) {
        case TimePrecision.milliseconds:
          return MillisecondsDurationFieldCodeGenerator(
            fieldDescriptor: fieldDescriptor,
            refName: refName,
            protoRefName: protoRefName,
          );
        case TimePrecision.microseconds:
          return MicrosecondsDurationFieldCodeGenerator(
            fieldDescriptor: fieldDescriptor,
            refName: refName,
            protoRefName: protoRefName,
          );
        default:
          throw UnimplementedError();
      }
    }
    return null;
  }
}
