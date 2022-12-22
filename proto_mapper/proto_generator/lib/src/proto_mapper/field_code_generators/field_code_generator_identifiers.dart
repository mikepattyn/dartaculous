import '../field_descriptor.dart';

mixin FieldCodeGeneratorIdentifiers {
  FieldDescriptor get fieldDescriptor;
  String get refName;
  String get protoRefName;
  String get fromProtoMap;

  String get fieldName => fieldDescriptor.displayName;
  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';
  String get protoFieldName => fieldDescriptor.protoFieldName;
}
