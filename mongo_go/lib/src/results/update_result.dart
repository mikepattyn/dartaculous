// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;

/// The result type returned from UpdateOne, UpdateMany, and
/// ReplaceOne operations.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#UpdateResult.
class UpdateResult {
  /// The _id field of the upserted document, or null if no upsert was done.
  final dynamic upsertedId;

  /// The number of documents matched by the filter.
  final int matchedCount;

  /// The number of documents modified by the operation.
  final int modifiedCount;

  /// The number of documents upserted by the operation.
  final int upsertedCount;

  UpdateResult({
    required this.upsertedId,
    required this.matchedCount,
    required this.modifiedCount,
    required this.upsertedCount,
  });

  @internal
  factory UpdateResult.fromProto(p.UpdateResult pResult) {
    final id = _getUpsertedId(pResult);

    final ret = UpdateResult(
      upsertedId: id,
      matchedCount: pResult.matchedCount.toInt(),
      modifiedCount: pResult.modifiedCount.toInt(),
      upsertedCount: pResult.upsertedCount.toInt(),
    );
    return ret;
  }

  static dynamic _getUpsertedId(p.UpdateResult pResult) {
    if (pResult.upsertedId.isEmpty) return null;
    final bson = BSON();
    final bb = BsonBinary.from(pResult.upsertedId);
    final idDoc = bson.deserialize(bb);
    final id = idDoc['_id'];
    return id;
  }
}
