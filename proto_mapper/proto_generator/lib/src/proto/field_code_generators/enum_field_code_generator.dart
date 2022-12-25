import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator
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

    final messageSuffix =
        fieldDescriptor.isNullable && !fieldDescriptor.isRepeated
            ? '_Message'
            : '';

    return '$packagePrefix${fieldDescriptor.prefix}$displayName$messageSuffix';
  }

  @override
  Iterable<String> get externalProtoNames =>
      getExternalProtoNames(fieldDescriptor.itemType);
}
