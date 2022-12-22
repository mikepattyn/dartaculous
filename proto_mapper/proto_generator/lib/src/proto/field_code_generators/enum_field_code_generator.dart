import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';
import 'external_proto_names_mixin.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator
    with ExternalProtoNamesMixin
    implements ExternalProtoNames {
  EnumFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType {
    final fieldElementType = fieldDescriptor.itemType;

    final packagePrefix = fieldElementType.packageName.isEmpty
        ? ''
        : '${fieldElementType.packageName}.';

    final displayName =
        fieldElementType.getDisplayString(withNullability: false);
    // In case of dynamic typed field, avoid "TypeName<dynamic>"...
    // if (fieldElementType is ParameterizedType &&
    //     fieldElementType.typeArguments.whereType<DynamicType>().isNotEmpty) {
    //   if (fieldElementType.element?.name != null) {
    //     displayName = fieldElementType.element!.name!;
    //   }
    // }

    final messageSuffix =
        fieldDescriptor.isNullable && !fieldDescriptor.isRepeated
            ? '_Message'
            : '';

    return '$packagePrefix${fieldDescriptor.prefix}$displayName$messageSuffix';
  }
}
