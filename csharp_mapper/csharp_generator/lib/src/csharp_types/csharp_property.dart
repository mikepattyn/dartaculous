import 'csharp_annotation.dart';

class CSharpProperty {
  final String name;
  final String type;
  final bool isNullable;
  final List<CSharpAttribute> attributes;

  const CSharpProperty({
    required this.name,
    required this.type,
    required this.isNullable,
    required this.attributes,
  });
}
