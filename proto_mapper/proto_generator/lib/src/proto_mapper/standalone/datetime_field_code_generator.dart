import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import '../field_descriptor.dart';
import '../standalone_field_code_generator.dart';

class DateTimeFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  DateTimeFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoExpression {
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'Int64($instanceReference.microsecondsSinceEpoch)';
    }
    return 'Int64($instanceReference.millisecondsSinceEpoch)';
  }

  @override
  String get fromProtoNonNullableExpression {
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'DateTime.fromMicrosecondsSinceEpoch(instance.$protoFieldName.toInt())';
    }
    return 'DateTime.fromMillisecondsSinceEpoch(instance.$protoFieldName.toInt())';
  }
}