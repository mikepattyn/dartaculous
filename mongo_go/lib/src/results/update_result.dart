// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;

class UpdateResult {
  final dynamic upsertedId;

  final int matchedCount;
  final int modifiedCount;
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
