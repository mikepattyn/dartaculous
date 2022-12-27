import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EnumFieldCodeGenerator(FieldDescriptor fieldDescriptor)
      : super(fieldDescriptor);

  @override
  String get fieldType {
    final fieldElementType = fieldDescriptor.itemType;

    final packagePrefix = fieldElementType.packageName.isEmpty
        ? ''
        : '${fieldElementType.packageName}.';

    final displayName =
        fieldElementType.getDisplayString(withNullability: false);

    final messageSuffix =
        fieldDescriptor.isNullable && !fieldDescriptor.isRepeated
            ? '_Message'
            : '';

    return '$packagePrefix${fieldDescriptor.prefix}$displayName$messageSuffix';
  }
}
