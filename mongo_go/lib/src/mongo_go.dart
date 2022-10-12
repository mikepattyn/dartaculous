import 'dart:ffi';
import 'package:bson/bson.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/update_options.dart';
import 'proto.dart';
import 'helpers.dart';

final nl = getNativeLibrary();
final emptyRequestContext = RequestContext(empty: Empty());

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

Future<ObjectId> closeSession(CloseSessionRequest request) async {
  final response = await callGoFunc(
    request: request,
    goFunc: nl.closeSession,
    responseToFill: ByteArrayMessage(),
  );
  return response.toObjectId();
}

Future<ObjectId> withTransaction(WithTransactionRequest request) async {
  final response = await callGoFunc(
    request: request,
    goFunc: nl.withTransaction,
    responseToFill: ByteArrayMessage(),
  );
  return response.toObjectId();
}

Future<void> endTransaction(EndTransactionRequest request) async {
  await callGoFunc(
    request: request,
    goFunc: nl.endTransaction,
    responseToFill: Empty(),
  );
}

Future<InsertOneResult> insertOne(
  ObjectId collectionOid,
  BsonBinary document, {
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = InsertOneRequest(
      collectionOid: oid, context: ctx, document: document.byteList);
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = InsertManyRequest(
    collectionOid: oid,
    context: ctx,
    documents: document.map((e) => e.byteList),
  );
  final response = await callGoFunc(
    request: request,
    goFunc: nl.insertMany,
    responseToFill: InsertManyResult(),
  );
  return response;
}

RequestContext _getRequestContext(RequestContext? transactionContext) =>
    transactionContext ?? emptyRequestContext;

Future<UpdateResult> updateOne(
  ObjectId collectionOid,
  BsonBinary filter,
  BsonBinary update, {
  UpdateOptions? options,
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = UpdateRequest(
    collectionOid: oid,
    context: ctx,
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = UpdateRequest(
    collectionOid: oid,
    context: ctx,
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = ReplaceRequest(
    collectionOid: oid,
    context: ctx,
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = DeleteRequest(
    collectionOid: oid,
    context: ctx,
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = DeleteRequest(
    collectionOid: oid,
    context: ctx,
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
  RequestContext? requestContext,
}) {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request =
      FindRequest(collectionOid: oid, context: ctx, filter: filter.byteList);
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request =
      FindRequest(collectionOid: oid, context: ctx, filter: filter.byteList);
  final response = await callGoFunc(
    request: request,
    goFunc: nl.findOne,
    responseToFill: ByteArrayMessage(),
  );
  final bin = BsonBinary.from(response.value);
  return bin;
}

Stream<Map<String, dynamic>> aggregate(
  ObjectId collectionOid,
  List<BsonBinary> pipeline, {
  RequestContext? requestContext,
}) {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = AggregateRequest(
      collectionOid: oid,
      context: ctx,
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
  RequestContext? requestContext,
}) {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = AggregateRequest(
      collectionOid: oid,
      context: ctx,
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
  RequestContext? requestContext,
  BulkWriteOptions? options,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = BulkWriteRequest(
    collectionOid: oid,
    context: ctx,
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
  RequestContext? requestContext,
}) async {
  final oid = collectionOid.toByteList();
  final ctx = _getRequestContext(requestContext);

  final request = CountDocumentsRequest(
      collectionOid: oid, context: ctx, filter: filter.byteList);
  final response = await callGoFunc(
    request: request,
    goFunc: nl.countDocuments,
    responseToFill: CountDocumentsResult(),
  );
  return response.cnt.toInt();
}
