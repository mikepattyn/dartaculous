import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class ListFieldCodeGenerator extends FieldCodeGenerator {
  final bool useWellKnownTypes;
  ListFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
    required this.useWellKnownTypes,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  String get _valueToProto {
    return collectionValueToProto(
        fieldDescriptor, fieldDescriptor.listParameterType!, 'e',
        useWellKnownTypes: useWellKnownTypes);
  }

  String get _toProtoConversion {
    final listParameterType = fieldDescriptor.listParameterType!;

    if (listParameterType.isDartCoreBool ||
        listParameterType.isDartCoreDouble ||
        listParameterType.isDartCoreInt ||
        listParameterType.isDartCoreString) {
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
    final listParameterType = fieldDescriptor.listParameterType!;
    if (listParameterType.isDartCoreBool ||
        listParameterType.isDartCoreDouble ||
        listParameterType.isDartCoreInt ||
        listParameterType.isDartCoreString) {
      return 'e';
    }
    return collectionProtoToValue(
      fieldDescriptor,
      listParameterType,
      'e',
      useWellKnownTypes: useWellKnownTypes,
    );
  }

  @override
  String get fromProtoNonNullableExpression =>
      '''List<${fieldDescriptor.parameterTypeName}>.unmodifiable($ref$protoFieldName.map((e) => $_protoToValue))''';
}
