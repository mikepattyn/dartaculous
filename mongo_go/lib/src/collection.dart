// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/mongo_go.dart' as p;
import 'package:mongo_go/src/update_options.dart';

class Collection {
  final String name;
  final Database database;
  final ObjectId collectionId;

  Collection({
    required this.collectionId,
    required this.database,
    required this.name,
  });

  Future<InsertOneResult> insertOne(
    Map<String, dynamic> document, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final bytes = bson.serialize(document);

    final result = await p.insertOne(
      collectionId,
      bytes,
      requestContext: transaction?.requestContext,
    );
    final ret = InsertOneResult.fromProto(result);
    return ret;
  }

  Future<InsertManyResult> insertMany(
    List<Map<String, dynamic>> documents, {
    Transaction? transaction,
  }) async {
    final docs = documents.map((e) {
      final bson = BSON();
      final bytes = bson.serialize(e);
      return bytes;
    }).toList();

    final result = await p.insertMany(
      collectionId,
      docs,
      requestContext: transaction?.requestContext,
    );
    final ret = InsertManyResult.fromProto(result);
    return ret;
  }

  Future<UpdateResult> updateOne(
    Map<String, dynamic> filter,
    Map<String, dynamic> update, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final result = await p.updateOne(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    final ret = UpdateResult.fromProto(result);
    return ret;
  }

  Future<UpdateResult> updateMany(
      Map<String, dynamic> filter, Map<String, dynamic> update,
      {UpdateOptions? options, Transaction? transaction}) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final result = await p.updateMany(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    final ret = UpdateResult.fromProto(result);
    return ret;
  }

  Future<UpdateResult> replaceOne(
    Map<String, dynamic> filter,
    Map<String, dynamic> update, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final result = await p.replaceOne(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    final ret = UpdateResult.fromProto(result);
    return ret;
  }

  Future<DeleteResult> deleteOne(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final result = await p.deleteOne(
      collectionId,
      filterBytes,
      requestContext: transaction?.requestContext,
    );
    final ret = DeleteResult.fromProto(result);
    return ret;
  }

  Future<DeleteResult> deleteMany(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final result = await p.deleteMany(
      collectionId,
      filterBytes,
      requestContext: transaction?.requestContext,
    );
    final ret = DeleteResult.fromProto(result);
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

  Future<Map<String, dynamic>> findOne(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final bytes = bson.serialize(filter);

    final result = await p.findOne(
      collectionId,
      bytes,
      requestContext: transaction?.requestContext,
    );

    final ret = bson.deserialize(result);
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

  Future<BulkWriteResult> bulkWrite(
    List<BulkWriteModel> writeModels, {
    Transaction? transaction,
    BulkWriteOptions? options,
  }) async {
    final wms = writeModels.map((p) => p.toProto()).toList();
    final opts = options?.toProto();

    final result = await p.bulkWrite(
      collectionId,
      wms,
      requestContext: transaction?.requestContext,
      options: opts,
    );
    final ret = BulkWriteResult.fromProto(result);
    return ret;
  }
}
