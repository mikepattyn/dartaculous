// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:mongo_go/mongo_proxy.dart';
import 'package:mongo_go/src/mongo_proxy.dart' as p;
import 'package:mongo_go/src/update_options.dart';

class Collection {
  final Database database;
  final ObjectId collectionId;

  Collection({
    required this.collectionId,
    required this.database,
  });

  Future<Map<String, dynamic>> insertOne(Map<String, dynamic> document,
      {Transaction? transaction}) async {
    final bson = BSON();
    final bytes = bson.serialize(document);

    final ret = await p.insertOne(collectionId, bytes,
        requestContext: transaction?.requestContext);
    return ret;
  }

  Future<Map<String, dynamic>> insertMany(
    List<Map<String, dynamic>> documents, {
    Transaction? transaction,
  }) async {
    final docs = documents.map((e) {
      final bson = BSON();
      final bytes = bson.serialize(e);
      return bytes;
    }).toList();

    final ret = await p.insertMany(
      collectionId,
      docs,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Future<Map<String, dynamic>> updateOne(
    Map<String, dynamic> filter,
    Map<String, dynamic> update, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final ret = await p.updateOne(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Future<Map<String, dynamic>> updateMany(
      Map<String, dynamic> filter, Map<String, dynamic> update,
      {UpdateOptions? options, Transaction? transaction}) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final ret = await p.updateMany(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Future<Map<String, dynamic>> replaceOne(
    Map<String, dynamic> filter,
    Map<String, dynamic> update, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final ret = await p.replaceOne(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Future<Map<String, dynamic>> deleteOne(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final ret = await p.deleteOne(
      collectionId,
      filterBytes,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Future<Map<String, dynamic>> deleteMany(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final ret = await p.deleteMany(
      collectionId,
      filterBytes,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Stream<Map<String, dynamic>> find(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) {
    final bson = BSON();
    final bytes = bson.serialize(filter);

    final ret = p.find(
      collectionId,
      bytes,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Stream<Map<String, dynamic>> aggregate(
    List<Map<String, dynamic>> pipeline, {
    Transaction? transaction,
  }) {
    final bytesList = pipeline.map(
      (e) {
        final bson = BSON();
        final bytes = bson.serialize(e);
        return bytes;
      },
    ).toList();
    final ret = p.aggregate(
      collectionId,
      bytesList,
      requestContext: transaction?.requestContext,
    );
    return ret;
  }

  Stream<Map<String, dynamic>> watch(
    List<Map<String, dynamic>> pipeline,
  ) {
    final bytesList = pipeline.map(
      (e) {
        final bson = BSON();
        final bytes = bson.serialize(e);
        return bytes;
      },
    ).toList();
    final ret = p.watch(collectionId, bytesList);
    return ret;
  }

  Future<String> createOneIndex(
    Map<String, dynamic> keys, {
    IndexOptions? indexOptions,
  }) async {
    final bson = BSON();
    final keysBytes = bson.serialize(keys);
    final options = indexOptions?.toProto();

    final ret = await p.createOneIndex(
      collectionId,
      keysBytes,
      indexOptions: options,
    );
    return ret;
  }

  Stream<Map<String, dynamic>> listIndexes() {
    final ret = p.listIndexes(
      collectionId,
    );
    return ret;
  }

  Future<Map<String, dynamic>> dropOneIndex(String name) async {
    final ret = await p.dropOneIndex(collectionId, name);
    return ret;
  }

  Future<Map<String, dynamic>> dropAllIndexes() async {
    final ret = await p.dropAllIndexes(collectionId);
    return ret;
  }
}
