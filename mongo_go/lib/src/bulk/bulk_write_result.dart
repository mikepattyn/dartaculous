import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;

class BulkWriteResult {
  final int insertedCount;
  final int matchedCount;
  final int modifiedCount;
  final int deletedCount;
  final int upsertedCount;
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
