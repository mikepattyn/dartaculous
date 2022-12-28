import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/common/proto_common.dart';
import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import '../field_descriptor.dart';

class SetFieldCodeGenerator extends CompositeFieldCodeGenerator {
  SetFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
    required Config config,
  }) : super(
            fieldDescriptor: fieldDescriptor,
            refName: refName,
            protoRefName: protoRefName,
            config: config);

  String get _valueToProto {
    return collectionValueToProto(
      fieldDescriptor,
      fieldDescriptor.setParameterType!,
      'e',
      config: config,
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
      config: config,
    );
  }

  @override
  String get fromProtoExpression =>
      '''Set<${fieldDescriptor.parameterTypeName}>.unmodifiable($ref$protoFieldName.map((e) => $_protoToValue))''';

  @override
  String get fromProtoNullableExpression => fromProtoExpression;
}
