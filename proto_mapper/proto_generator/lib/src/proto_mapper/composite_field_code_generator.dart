import 'package:proto_annotations/proto_annotations.dart';

import 'field_code_generators/entity_field_code_generator.dart';
import 'field_code_generators/generic_field_code_generator.dart';
import 'field_code_generators/iterable_field_code_generator.dart';
import 'field_code_generator.dart';
import 'field_code_generators/enum_field_code_generator.dart';
import 'field_code_generators/list_field_code_generator.dart';
import 'field_code_generators/map_field_code_generator.dart';
import 'field_code_generators/set_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class CompositeFieldCodeGenerator implements FieldCodeGenerator {
  static const defaultRefName = 'instance';
  static const defaultProtoRefName = 'proto';

  final FieldDescriptor fieldDescriptor;
  final String refName;
  final String protoRefName;

  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';

  CompositeFieldCodeGenerator(
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

  static bool isComposite(FieldDescriptor fieldDescriptor) {
    return fieldDescriptor.fieldElementType.isDartCoreSet ||
        fieldDescriptor.typeIsEnum ||
        fieldDescriptor.typeHasMapProtoAnnotation ||
        (fieldDescriptor.fieldElementType.isDartCoreIterable &&
            fieldDescriptor.iterableParameterType != null);
  }

  factory CompositeFieldCodeGenerator.fromFieldDescriptor(
      {required FieldDescriptor fieldDescriptor,
      required String refName,
      required String protoRefName,
      required bool useWellKnownTypes}) {
    if (fieldDescriptor.fieldElementType.isDartCoreList) {
      return ListFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreMap) {
      return MapFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }

    if (fieldDescriptor.fieldElementType.isDartCoreSet) {
      return SetFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }
    if (fieldDescriptor.typeIsEnum) {
      return EnumFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.typeHasMapProtoAnnotation) {
      return EntityFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreIterable &&
        fieldDescriptor.iterableParameterType != null) {
      return IterableFieldCodeGenerator(
        fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        useWellKnownTypes: useWellKnownTypes,
      );
    }

    return GenericFieldCodeGenerator(
      fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
    );
  }
}
