// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:mongo_go/mongo_proxy.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/mongo_proxy.dart' as p;
import 'proto.dart';

class Database {
  final ObjectId databaseId;
  final Connection connection;
  Database({
    required this.connection,
    required this.databaseId,
  });

  Future<Collection> collection(String name) async {
    final request = CollectionRequest(
        databaseOid: databaseId.toByteList(), collectionName: name);
    final oid = await p.collection(request);
    final ret = Collection(database: this, collectionId: oid);
    return ret;
  }

  Future<void> drop() async {
    await p.dropDatabase(databaseId);
  }
}
