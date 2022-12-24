import 'package:analyzer/dart/element/type.dart';
import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class EntityFieldCodeGenerator extends CompositeFieldCodeGenerator
    implements ExternalProtoNames {
  EntityFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType {
    final fieldElementType = fieldDescriptor.itemType;

    final packagePrefix = fieldElementType.packageName.isEmpty
        ? ''
        : '${fieldElementType.packageName}.';

    var displayName = fieldElementType.getDisplayString(withNullability: false);
    // In case of dynamic typed field, avoid "TypeName<dynamic>"...
    if (fieldElementType is ParameterizedType &&
        fieldElementType.typeArguments.whereType<DynamicType>().isNotEmpty) {
      if (fieldElementType.element?.name != null) {
        displayName = fieldElementType.element!.name!;
      }
    }
    return '$packagePrefix${fieldDescriptor.prefix}$displayName';
  }

  @override
  Iterable<String> get externalProtoNames =>
      getExternalProtoNames(fieldDescriptor.itemType);
}
