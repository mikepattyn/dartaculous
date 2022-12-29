import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';

import '../field_descriptor.dart';

class GDoubleFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDoubleFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = DoubleValue(value: $ref$fieldName); 
        }
      '''
      : '$protoRef$protoFieldName = $ref$fieldName;';

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) {
      return '''($protoRef$protoFieldName.hasValue() ? $protoRef$protoFieldName.value : null)''';
    }
    return '$protoRef$protoFieldName';
  }
}
