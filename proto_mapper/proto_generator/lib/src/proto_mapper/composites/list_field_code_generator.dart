import 'package:proto_generator/src/proto_common.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import '../field_descriptor.dart';

class ListFieldCodeGenerator extends CompositeFieldCodeGenerator {
  final bool useWellKnownTypes;
  ListFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
    required this.useWellKnownTypes,
  }) : super(
          fieldDescriptor: fieldDescriptor,
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
  String get fromProtoNullableExpression => fromProtoExpression;

  @override
  String get fromProtoExpression =>
      '''List<${fieldDescriptor.parameterTypeName}>.unmodifiable($ref$protoFieldName.map((e) => $_protoToValue))''';
}
