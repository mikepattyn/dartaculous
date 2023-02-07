import 'csharp_property.dart';

class CSharpRecord {
  final String name;
  final String superClassName;
  final List<CSharpProperty> properties;

  const CSharpRecord({
    required this.name,
    required this.properties,
    this.superClassName = '',
  });
}
