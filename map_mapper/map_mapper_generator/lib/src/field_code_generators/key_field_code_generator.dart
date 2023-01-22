import '../field_code_generator.dart';
import '../field_descriptor.dart';

class KeyFieldCodeGenerator extends FieldCodeGenerator {
  KeyFieldCodeGenerator(super.fieldDescriptor, super.hasDefaultsProvider);

  @override
  bool get usesKh => true;

  @override
  String get mapValue => '''\$kh.fieldNameToMapKey('$fieldName')''';

  @override
  String get toMapMap =>
      '''\$kh.keyToMap(map, instance.$fieldName ${fieldDescriptor.isNullable ? '?? \'\' ' : ''}, '$fieldName');''';

  @override
  String fromMapExpression(String sourceExpression) =>
      '\$kh.keyFromMap(map, \'$fieldName\')';

  @override
  String get fieldNamesClassGetter =>
      '''String get $fieldName => prefix + \$kh.fieldNameToMapKey(_$fieldName);''';
}
