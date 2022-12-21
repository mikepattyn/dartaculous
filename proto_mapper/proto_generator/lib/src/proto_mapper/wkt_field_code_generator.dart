import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';

import 'wkt/bigint_field_code_generator.dart';
import 'wkt/decimal_field_code_generator.dart';
import 'wkt/gbool_field_code_generator.dart';
import 'wkt/gdatetime_field_code_generator.dart';
import 'wkt/gdouble_field_code_generator.dart';
import 'wkt/gduration_field_code_generator.dart';
import 'wkt/gint_field_code_generator.dart';
import 'wkt/gstring_field_code_generator.dart';
import 'field_code_generator.dart';
import 'field_descriptor.dart';

abstract class WKTFieldCodeGenerator implements FieldCodeGenerator {
  static const defaultRefName = 'instance';
  static const defaultProtoRefName = 'proto';

  final FieldDescriptor fieldDescriptor;
  final String refName;
  final String protoRefName;

  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';

  WKTFieldCodeGenerator(
    this.fieldDescriptor, {
    this.refName = defaultRefName,
    this.protoRefName = defaultProtoRefName,
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
  String get fromProtoMap => '$fieldName = $fromProtoExpression';
  @override
  String get constructorMap => '$fieldName: $fromProtoExpression, ';

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

  static WKTFieldCodeGenerator? fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) {
    if (fieldDescriptor.fieldElementType.isDartCoreString) {
      return GStringFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreBool) {
      return GBoolFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreDouble) {
      return GDoubleFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreInt) {
      return GIntFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return GDateTimeFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (BigInt).toString()) {
      return BigIntFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Decimal).toString()) {
      return DecimalFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      return GDurationFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }

    return null;
  }
}
