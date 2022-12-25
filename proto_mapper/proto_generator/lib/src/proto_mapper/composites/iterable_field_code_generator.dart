import 'package:proto_generator/src/proto_common.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import '../field_descriptor.dart';

class IterableFieldCodeGenerator extends CompositeFieldCodeGenerator {
  final bool useWellKnownTypes;
  IterableFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required this.useWellKnownTypes,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  String get _valueToProto {
    return collectionValueToProto(
      fieldDescriptor,
      fieldDescriptor.iterableParameterType!,
      'e',
      useWellKnownTypes: useWellKnownTypes,
    );
  }

  String get _toProtoConversion {
    final iterableParameterType = fieldDescriptor.iterableParameterType!;

    if (iterableParameterType.isDartCoreBool ||
        iterableParameterType.isDartCoreDouble ||
        iterableParameterType.isDartCoreInt ||
        iterableParameterType.isDartCoreString) {
      return '';
    }
    return '.map((e) => $_valueToProto)';
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''        
      $protoRef$protoFieldName
        .addAll($ref$fieldName${_toProtoConversion != '' ? '?' : ''}$_toProtoConversion ?? []);
      '''
      : '''
        $protoRef$protoFieldName
          .addAll($ref$fieldName$_toProtoConversion);

      ''';

  String get _protoToValue {
    final iterableParameterType = fieldDescriptor.iterableParameterType!;
    if (iterableParameterType.isDartCoreBool ||
        iterableParameterType.isDartCoreDouble ||
        iterableParameterType.isDartCoreInt ||
        iterableParameterType.isDartCoreString) {
      return 'e';
    }
    return collectionProtoToValue(
      fieldDescriptor,
      iterableParameterType,
      'e',
      useWellKnownTypes: useWellKnownTypes,
    );
  }

  @override
  String get fromProtoExpression =>
      '''List<${fieldDescriptor.parameterTypeName}>.unmodifiable($ref$protoFieldName.map((e) => $_protoToValue))''';

  @override
  String get fromProtoNullableExpression => fromProtoExpression;
}