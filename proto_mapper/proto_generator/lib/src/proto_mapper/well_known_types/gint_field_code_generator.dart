import 'package:proto_generator/src/proto_mapper/wkt_field_code_generator.dart';

class GIntFieldCodeGenerator extends WKTFieldCodeGenerator {
  GIntFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
  });

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = Int32Value() .. value= $ref$fieldName!; 
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
