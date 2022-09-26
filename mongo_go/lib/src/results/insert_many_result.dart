import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;

class InsertManyResult {
  final List<dynamic> insertedIds;
  InsertManyResult({
    required this.insertedIds,
  });

  @internal
  factory InsertManyResult.fromProto(p.InsertManyResult pResult) {
    final ids = pResult.insertedIds.map(
      (e) {
        final bson = BSON();
        final bb = BsonBinary.from(e);
        final idDoc = bson.deserialize(bb);
        final id = idDoc['_id'];
        return id;
      },
    ).toList();

    final ret = InsertManyResult(insertedIds: ids);
    return ret;
  }
}
