import 'package:proto_generator/src/proto_common.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import '../field_descriptor.dart';

class SetFieldCodeGenerator extends CompositeFieldCodeGenerator {
  final bool useWellKnownTypes;

  SetFieldCodeGenerator({
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
      fieldDescriptor.setParameterType!,
      'e',
      useWellKnownTypes: useWellKnownTypes,
    );
  }

  String get _toProtoConversion {
    final setParameterType = fieldDescriptor.setParameterType!;

    if (setParameterType.isDartCoreBool ||
        setParameterType.isDartCoreDouble ||
        setParameterType.isDartCoreInt ||
        setParameterType.isDartCoreString) {
      return '';
    }
    return '.map((e) => $_valueToProto)';
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''        
      $protoRef$protoFieldName
        .addAll($ref$fieldName${_toProtoConversion != '' ? '?' : ''}$_toProtoConversion ?? []);
        $hasValueToProtoMap;
      '''
      : '''
        $protoRef$protoFieldName
          .addAll($ref$fieldName$_toProtoConversion);

      ''';

  String get _protoToValue {
    final setParameterType = fieldDescriptor.setParameterType!;
    if (setParameterType.isDartCoreBool ||
        setParameterType.isDartCoreDouble ||
        setParameterType.isDartCoreInt ||
        setParameterType.isDartCoreString) {
      return 'e';
    }
    return collectionProtoToValue(
      fieldDescriptor,
      setParameterType,
      'e',
      useWellKnownTypes: useWellKnownTypes,
    );
  }

  @override
  String get fromProtoNonNullableExpression =>
      '''Set<${fieldDescriptor.parameterTypeName}>.unmodifiable($ref$protoFieldName.map((e) => $_protoToValue))''';
}
