import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;

/// BulkWriteResult is the result type returned by a BulkWrite operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#BulkWriteResult.
class BulkWriteResult {
  /// The number of documents inserted.
  final int insertedCount;

  /// The number of documents matched by filters in update and replace operations.
  final int matchedCount;

  /// The number of documents modified by update and replace operations.
  final int modifiedCount;

  /// The number of documents deleted.
  final int deletedCount;

  /// The number of documents upserted by update and replace operations.
  final int upsertedCount;

  /// A map of operation index to the _id of each upserted document.
  final Map<int, dynamic> upsertedIds;
  BulkWriteResult({
    required this.insertedCount,
    required this.matchedCount,
    required this.modifiedCount,
    required this.deletedCount,
    required this.upsertedCount,
    required this.upsertedIds,
  });

  @internal
  factory BulkWriteResult.fromProto(p.BulkWriteResult pResult) {
    final ret = BulkWriteResult(
        insertedCount: pResult.insertedCount.toInt(),
        deletedCount: pResult.deletedCount.toInt(),
        matchedCount: pResult.matchedCount.toInt(),
        modifiedCount: pResult.modifiedCount.toInt(),
        upsertedCount: pResult.upsertedCount.toInt(),
        upsertedIds: pResult.upsertedIds.map(
          (key, value) {
            final bson = BSON();
            final bb = BsonBinary.from(value);
            final idDoc = bson.deserialize(bb);

            return MapEntry<int, dynamic>(key.toInt(), idDoc['_id']);
          },
        ));
    return ret;
  }
}
