import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;

class InsertOneResult {
  final dynamic insertedId;
  InsertOneResult({
    required this.insertedId,
  });

  @internal
  factory InsertOneResult.fromProto(p.InsertOneResult pResult) {
    final bson = BSON();
    final bb = BsonBinary.from(pResult.insertedId);
    final idDoc = bson.deserialize(bb);
    final id = idDoc['_id'];

    final ret = InsertOneResult(insertedId: id);
    return ret;
  }
}
