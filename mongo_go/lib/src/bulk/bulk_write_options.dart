import '../extensions.dart';
import '../proto.dart' as p;
import 'package:meta/meta.dart';

/// Represents options that can be used to configure a BulkWrite operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#BulkWriteOptions.
class BulkWriteOptions {
  /// If true, writes executed as part of the operation will opt out of
  /// document-level validation on the server. This option is valid for
  /// MongoDB versions >= 3.2 and is ignored for previous server versions.
  /// The default value is false.
  /// See https://www.mongodb.com/docs/manual/core/schema-validation/ for more
  /// information about document validation.
  final bool? bypassDocumentValidation;

  // If true, no writes will be executed after one fails.
  // The default value is true.
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
