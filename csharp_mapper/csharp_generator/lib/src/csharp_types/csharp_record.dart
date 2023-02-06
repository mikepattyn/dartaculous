import 'csharp_property.dart';

class CSharpRecord {
  final String name;
  final List<CSharpProperty> properties;

  const CSharpRecord({
    required this.name,
    required this.properties,
  });
}
