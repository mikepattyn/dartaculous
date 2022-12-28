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
    return 'Int64($instanceReference.millisecondsSinceEpoch)';
  }

  @override
  String get fromProtoNonNullableExpression {
    return 'DateTime.fromMillisecondsSinceEpoch(instance.$protoFieldName.toInt())';
  }
}
