import 'package:proto_generator/src/proto_mapper/composite_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import '../field_descriptor.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EnumFieldCodeGenerator({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) : super(
          fieldDescriptor: fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  String get _prefix => fieldDescriptor.prefix;

  @override
  String get fromProtoExpression =>
      '''${fieldDescriptor.fieldElementTypeName}.values[$ref$fieldName.value]''';

  @override
  String get fromProtoNullableExpression {
    return '''(${ref}has${protoFieldName.pascalName}()
          ? (${fieldDescriptor.fieldElementTypeName}.values[$ref$fieldName.value.value])
          : null)''';
  }

/* 
As is:
      secondaryApplianceType: (instance.secondaryApplianceTypeHasValue
          ? (ApplianceType.values[instance.secondaryApplianceType.value])
          : null),


To be:
      secondaryApplianceType: (instance.hasSecondaryApplianceType()
          ? (ApplianceType.values[instance.secondaryApplianceType.value.value])
          : null),
*/

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $_prefix${fieldDescriptor.fieldElementTypeName}_Message(value: $toProtoNullableExpression); 
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  @override
  String get toProtoExpression =>
      '''$_prefix${fieldDescriptor.fieldElementTypeName}
    .valueOf($instanceReference.index)!''';
}
