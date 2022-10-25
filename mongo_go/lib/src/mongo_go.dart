import 'dart:ffi';
import 'package:bson/bson.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/update_options.dart';
import 'proto.dart';
import 'helpers.dart';

final nl = getNativeLibrary();

void initialize() {
  nl.initialize(NativeApi.initializeApiDLData);
}

Future<ObjectId> connect(ConnectionRequest request) async {
  final response = await callGoFunc(
    request: request,
    goFunc: nl.connectMongo,
    responseToFill: ByteArrayMessage(),
  );
  return response.toObjectId();
}

Future<ObjectId> database(DatabaseRequest request) async {
  final response = await callGoFunc(
    request: request,
    goFunc: nl.database,
    responseToFill: ByteArrayMessage(),
  );
  return response.toObjectId();
}

Future<void> dropDatabase(ObjectId databaseOid) async {
  final request = DropDatabaseRequest(databaseOid: databaseOid.toByteList());
  await callGoFunc(
    request: request,
    goFunc: nl.dropDatabase,
    responseToFill: Empty(),
  );
}

Future<ObjectId> collection(CollectionRequest request) async {
  final response = await callGoFunc(
    request: request,
    goFunc: nl.collection,
    responseToFill: ByteArrayMessage(),
  );
  return response.toObjectId();
}

Future<ObjectId> startSession(StartSessionRequest request) async {
  final response = await callGoFunc(
    request: request,
    goFunc: nl.startSession,
    responseToFill: ByteArrayMessage(),
  );
  return response.toObjectId();
}

Future<void> closeSession(SessionRequest request) async {
  await callGoFunc(
    request: request,
    goFunc: nl.closeSession,
    responseToFill: Empty(),
  );
}

Future<void> startTransaction(SessionRequest request) async {
  await callGoFunc(
    request: request,
    goFunc: nl.startTransaction,
    responseToFill: Empty(),
  );
}

Future<void> commitTransaction(SessionRequest request) async {
  await callGoFunc(
    request: request,
    goFunc: nl.commitTransaction,
    responseToFill: Empty(),
  );
}

Future<void> abortTransaction(SessionRequest request) async {
  await callGoFunc(
    request: request,
    goFunc: nl.abortTransaction,
    responseToFill: Empty(),
  );
}

// Future<ObjectId> withTransaction(WithTransactionRequest request) async {
//   final response = await callGoFunc(
//     request: request,
//     goFunc: nl.withTransaction,
//     responseToFill: ByteArrayMessage(),
//   );
//   return response.toObjectId();
// }

// Future<void> endTransaction(EndTransactionRequest request) async {
//   await callGoFunc(
//     request: request,
//     goFunc: nl.endTransaction,
//     responseToFill: Empty(),
//   );
// }

Future<InsertOneResult> insertOne(
  ObjectId collectionOid,
  BsonBinary document, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = InsertOneRequest(
      collectionOid: oid, sessionOid: soid, document: document.byteList);
  final response = await callGoFunc(
    request: request,
    goFunc: nl.insertOne,
    responseToFill: InsertOneResult(),
  );
  return response;
}

Future<InsertManyResult> insertMany(
  ObjectId collectionOid,
  List<BsonBinary> document, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = InsertManyRequest(
    collectionOid: oid,
    sessionOid: soid,
    documents: document.map((e) => e.byteList),
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.insertMany,
    responseToFill: InsertManyResult(),
  );
  return response;
}

Future<UpdateResult> updateOne(
  ObjectId collectionOid,
  BsonBinary filter,
  BsonBinary update, {
  UpdateOptions? options,
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = UpdateRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
    update: update.byteList,
    isUpsert: options?.isUpsert ?? false,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.updateOne,
    responseToFill: UpdateResult(),
  );
  return response;
}

Future<UpdateResult> updateMany(
  ObjectId collectionOid,
  BsonBinary filter,
  BsonBinary update, {
  UpdateOptions? options,
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = UpdateRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
    update: update.byteList,
    isUpsert: options?.isUpsert ?? false,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.updateMany,
    responseToFill: UpdateResult(),
  );
  return response;
}

Future<UpdateResult> replaceOne(
  ObjectId collectionOid,
  BsonBinary filter,
  BsonBinary replacement, {
  UpdateOptions? options,
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = ReplaceRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
    replacement: replacement.byteList,
    isUpsert: options?.isUpsert ?? false,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.replaceOne,
    responseToFill: UpdateResult(),
  );
  return response;
}

Future<DeleteResult> deleteOne(
  ObjectId collectionOid,
  BsonBinary filter, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = DeleteRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.deleteOne,
    responseToFill: DeleteResult(),
  );
  return response;
}

Future<DeleteResult> deleteMany(
  ObjectId collectionOid,
  BsonBinary filter, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = DeleteRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.deleteMany,
    responseToFill: DeleteResult(),
  );
  return response;
}

Stream<Map<String, dynamic>> find(
  ObjectId collectionOid,
  BsonBinary filter, {
  ObjectId? sessionOid,
}) {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = FindRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
  );
  final goStream = getGoStream(
    request: request,
    goFunc: nl.find,
    responseToFill: ByteArrayMessage(),
  );
  final stream = goStream.map(
    (response) {
      final bson = BSON();
      final bb = BsonBinary.from(response.value);
      return bson.deserialize(bb);
    },
  );
  return stream;
}

Future<BsonBinary> findOne(
  ObjectId collectionOid,
  BsonBinary filter, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = FindRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.findOne,
    responseToFill: ByteArrayMessage(),
  );
  final bin = BsonBinary.from(response.value);
  return bin;
}

Future<BsonBinary> findOneAndDelete(
  ObjectId collectionOid,
  BsonBinary filter, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = FindOneRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.findOneAndDelete,
    responseToFill: ByteArrayMessage(),
  );
  final bin = BsonBinary.from(response.value);
  return bin;
}

Future<BsonBinary> findOneAndUpdate(
  ObjectId collectionOid,
  BsonBinary filter,
  BsonBinary update, {
  UpdateOptions? options,
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = UpdateRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
    update: update.byteList,
    isUpsert: options?.isUpsert ?? false,
  );

  final response = await callGoFunc(
    request: request,
    goFunc: nl.findOneAndUpdate,
    responseToFill: ByteArrayMessage(),
  );
  final bin = BsonBinary.from(response.value);
  return bin;
}

Future<BsonBinary> findOneAndReplace(
  ObjectId collectionOid,
  BsonBinary filter,
  BsonBinary replacement, {
  UpdateOptions? options,
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = ReplaceRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
    replacement: replacement.byteList,
    isUpsert: options?.isUpsert ?? false,
  );

  final response = await callGoFunc(
    request: request,
    goFunc: nl.findOneAndReplace,
    responseToFill: ByteArrayMessage(),
  );
  final bin = BsonBinary.from(response.value);
  return bin;
}

Stream<Map<String, dynamic>> aggregate(
  ObjectId collectionOid,
  List<BsonBinary> pipeline, {
  ObjectId? sessionOid,
}) {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = AggregateRequest(
      collectionOid: oid,
      sessionOid: soid,
      pipeline: pipeline.map(
        (e) => e.byteList,
      ));
  final goStream = getGoStream(
    request: request,
    goFunc: nl.aggregate,
    responseToFill: ByteArrayMessage(),
  );
  final stream = goStream.map(
    (response) {
      final bson = BSON();
      final bb = BsonBinary.from(response.value);
      return bson.deserialize(bb);
    },
  );
  return stream;
}

Stream<Map<String, dynamic>> watch(
  ObjectId collectionOid,
  List<BsonBinary> pipeline, {
  ObjectId? sessionOid,
}) {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = AggregateRequest(
      collectionOid: oid,
      sessionOid: soid,
      pipeline: pipeline.map(
        (e) => e.byteList,
      ));
  final goStream = getGoStream(
    request: request,
    goFunc: nl.watch,
    responseToFill: ByteArrayMessage(),
  );
  final stream = goStream.map(
    (response) {
      final bson = BSON();
      final bb = BsonBinary.from(response.value);
      return bson.deserialize(bb);
    },
  );
  return stream;
}

Future<void> disconnect(ObjectId connectionId) async {
  final request = DisconnectRequest(connectionOid: connectionId.toByteList());
  await callGoFunc(
    request: request,
    goFunc: nl.disconnect,
    responseToFill: Empty(),
  );
}

Future<String> createOneIndex(
  ObjectId collectionOid,
  BsonBinary keys, {
  IndexOptions? indexOptions,
}) async {
  final oid = collectionOid.toByteList();

  final request = CreateIndexRequest(
    collectionOid: oid,
    keys: keys.byteList,
    indexOptions: indexOptions?.writeToBuffer(),
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.createOneIndex,
    responseToFill: StringMessage(),
  );
  return response.value;
}

Stream<Map<String, dynamic>> listIndexes(ObjectId collectionOid) {
  final oid = collectionOid.toByteList();

  final request = ListIndexesRequest(collectionOid: oid);

  final goStream = getGoStream(
    request: request,
    goFunc: nl.listIndexes,
    responseToFill: ByteArrayMessage(),
  );
  final stream = goStream.map(
    (response) {
      final bson = BSON();
      final bb = BsonBinary.from(response.value);
      return bson.deserialize(bb);
    },
  );
  return stream;
}

Future<Map<String, dynamic>> dropOneIndex(
  ObjectId collectionOid,
  String name,
) async {
  final oid = collectionOid.toByteList();

  final request = DropIndexRequest(
    collectionOid: oid,
    name: name,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.dropOneIndex,
    responseToFill: ByteArrayMessage(),
  );
  final bson = BSON();
  final bb = BsonBinary.from(response.value);
  return bson.deserialize(bb);
}

Future<Map<String, dynamic>> dropAllIndexes(ObjectId collectionOid) async {
  final oid = collectionOid.toByteList();

  final request = DropAllIndexesRequest(collectionOid: oid);
  final response = await callGoFunc(
    request: request,
    goFunc: nl.dropAllIndexes,
    responseToFill: ByteArrayMessage(),
  );
  final bson = BSON();
  final bb = BsonBinary.from(response.value);
  return bson.deserialize(bb);
}

Future<BulkWriteResult> bulkWrite(
  ObjectId collectionOid,
  List<WriteModel> writeModels, {
  ObjectId? sessionOid,
  BulkWriteOptions? options,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = BulkWriteRequest(
    collectionOid: oid,
    sessionOid: soid,
    writeModels: writeModels,
    options: options,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.bulkWrite,
    responseToFill: BulkWriteResult(),
  );
  return response;
}

Future<int> countDocuments(
  ObjectId collectionOid,
  BsonBinary filter, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = CountDocumentsRequest(
    collectionOid: oid,
    sessionOid: soid,
    filter: filter.byteList,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.countDocuments,
    responseToFill: CountDocumentsResult(),
  );
  return response.cnt.toInt();
}

Future<int> estimatedDocumentCount(
  ObjectId collectionOid, {
  ObjectId? sessionOid,
}) async {
  final oid = collectionOid.toByteList();
  final soid = sessionOid?.toByteList();

  final request = EstimatedDocumentCountRequest(
    collectionOid: oid,
    sessionOid: soid,
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.estimatedDocumentCount,
    responseToFill: CountDocumentsResult(),
  );
  return response.cnt.toInt();
}
