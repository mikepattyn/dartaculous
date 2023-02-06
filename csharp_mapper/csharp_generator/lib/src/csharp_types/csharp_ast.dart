import 'csharp_record.dart';
import 'csharp_enum.dart';

class CSharpAst {
  final String namespace;
  final Set<String> usings;
  final List<CSharpRecord> records;
  final List<CSharpEnum> enums;

  const CSharpAst({
    required this.namespace,
    required this.usings,
    required this.records,
    required this.enums,
  });
}
