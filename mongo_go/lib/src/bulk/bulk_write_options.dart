import '../extensions.dart';
import '../proto.dart' as p;
import 'package:meta/meta.dart';

class BulkWriteOptions {
  final bool? bypassDocumentValidation;
  final bool? ordered;

  BulkWriteOptions({
    this.bypassDocumentValidation,
    this.ordered,
  });

  @internal
  p.BulkWriteOptions toProto() {
    final opts = p.BulkWriteOptions(
      bypassDocumentValidation: bypassDocumentValidation.toWrapped(),
      ordered: ordered.toWrapped(),
    );

    return opts;
  }
}
