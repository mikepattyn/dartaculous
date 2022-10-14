import 'package:meta/meta.dart';

import '../proto.dart' as p;

/// DeleteResult is the result type returned by DeleteOne and DeleteMany
/// operations.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#DeleteResult.
class DeleteResult {
  /// The number of documents deleted.
  final int deletedCount;

  DeleteResult({
    required this.deletedCount,
  });

  @internal
  factory DeleteResult.fromProto(p.DeleteResult pResult) {
    final ret = DeleteResult(
      deletedCount: pResult.deletedCount.toInt(),
    );
    return ret;
  }
}
