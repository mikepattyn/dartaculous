import 'package:arango_driver/arango_driver.dart';

class DocumentOperationResult {
  final Map<String, dynamic> map;
  final Identifier identifier;
  final String oldRev;

  const DocumentOperationResult({
    required this.map,
    required this.identifier,
    this.oldRev = '',
  });
}
