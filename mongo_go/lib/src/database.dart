// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/mongo_go.dart' as p;
import 'proto.dart';

/// Represents a handle to a database.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Database.
class Database {
  /// For internal use of the package.
  @internal
  final ObjectId databaseId;

  /// The [Connection] to which this handle is attached to.
  final Connection connection;
  Database({
    required this.connection,
    required this.databaseId,
  });

  /// Returns a handle to a [Collection] of the given name.
  Future<Collection> collection(String name) async {
    final request = CollectionRequest(
        databaseOid: databaseId.toByteList(), collectionName: name);
    final oid = await p.collection(request);
    final ret = Collection(
      database: this,
      collectionId: oid,
      name: name,
    );
    return ret;
  }

  /// Drops the database.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Database.Drop.
  Future<void> drop() async {
    await p.dropDatabase(databaseId);
  }
}
