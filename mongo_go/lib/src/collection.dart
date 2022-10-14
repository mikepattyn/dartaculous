// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/mongo_go.dart' as p;
import 'package:mongo_go/src/update_options.dart';

/// Represents a handle to a collection.
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.
class Collection {
  /// The name of the collection.
  final String name;

  /// The handle of the [Database] that owns the collection.
  final Database database;

  /// For internal use of the package.
  @internal
  final ObjectId collectionId;

  /// For internal use only.
  /// In order to retrieve an instance of a collection,
  /// use the [Database] connection method instead.
  @internal
  Collection({
    required this.collectionId,
    required this.database,
    required this.name,
  });

  /// Executes an insert command to insert a single document into the collection.
  ///
  /// The document parameter must be the document to be inserted.
  /// If the document does not have an _id field when transformed into BSON,
  /// one will be added automatically to the marshalled document.
  /// The original document will not be modified.
  /// The _id can be retrieved from the InsertedID field of the returned
  /// InsertOneResult.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.InsertOne.
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

  /// Executes an insert command to insert multiple documents into the collection.
  ///
  /// The documents parameter must be an array of documents to insert.
  /// The array cannot be empty. For any document that does not have an _id
  /// field when transformed into BSON, one will be added automatically to
  /// the marshalled document.
  /// The original document will not be modified. The _id values for the
  /// inserted documents can be retrieved from the InsertedIDs field of
  /// the returned InsertManyResult.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.InsertMany.
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

  /// Executes an update command to update at most one document in the collection.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be updated.
  /// If the filter does not match any documents, the operation will succeed
  /// and an UpdateResult with a MatchedCount of 0 will be returned.
  /// If the filter matches multiple documents, one will be selected from
  /// the matched set and MatchedCount will equal 1.
  ///
  /// The update parameter must be a document containing update operators
  /// (https://www.mongodb.com/docs/manual/reference/operator/update/) and can
  /// be used to specify the modifications to be made to the selected document.
  /// It cannot be empty.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.UpdateOne.
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

  /// Executes an update command to update documents in the collection.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the documents to be updated.
  /// If the filter does not match any documents, the operation will succeed
  /// and an UpdateResult with a MatchedCount of 0 will be returned.
  ///
  /// The update parameter must be a document containing update operators
  /// (https://www.mongodb.com/docs/manual/reference/operator/update/) and can
  /// be used to specify the modifications to be made to the selected documents.
  /// It cannot be empty.
  ///
  /// The optional options parameter can be used to specify options for the
  /// operation (see [UpdateOptions]).
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.UpdateMany.
  Future<UpdateResult> updateMany(
    Map<String, dynamic> filter,
    Map<String, dynamic> update, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
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

  /// Executes an update command to replace at most one document in the collection.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be replaced.
  /// If the filter does not match any documents, the operation will succeed
  /// and an UpdateResult with a MatchedCount of 0 will be returned.
  /// If the filter matches multiple documents, one will be selected from the
  /// matched set and MatchedCount will equal 1.
  ///
  /// The replacement parameter must be a document that will be used to
  /// replace the selected document. It cannot contain any update operators
  /// (https://www.mongodb.com/docs/manual/reference/operator/update/).
  ///
  /// The optional options parameter can be used to specify options for the
  /// operation (see [UpdateOptions]).
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.ReplaceOne.
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

  /// Executes a delete command to delete at most one document from the
  /// collection.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be deleted. If the filter does
  /// not match any documents, the operation will succeed and a DeleteResult
  /// with a DeletedCount of 0 will be returned.
  /// If the filter matches multiple documents, one will be selected from
  /// the matched set.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.DeleteOne.
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

  /// Executes a delete command to delete documents from the collection.
  ///
  /// The filter parameter must be a document containing query operators
  /// and can be used to select the documents to be deleted.
  /// An empty document (e.g. {}) should be used to delete all documents in
  /// the collection. If the filter does not match any documents, the
  /// operation will succeed and a DeleteResult with a DeletedCount
  /// of 0 will be returned.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.DeleteMany.
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

  /// Executes a find command and returns a Stream over the matching documents
  /// in the collection.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select which documents are included in the result.
  /// An empty document (e.g. {}) should be used to include all documents.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.Find
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

  /// Executes a find command and returns a single document in the collection.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be returned. If the filter does
  /// not match any documents, a [MongoNoDocumentsError] will be thrown.
  /// If the filter matches multiple documents, one will be selected from
  /// the matched set.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.FindOne.
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

  /// Returns the number of documents in the collection. For a fast count of
  /// the documents in the collection, see the [estimatedDocumentCount] method.
  ///
  /// The filter parameter must be a document and can be used to select which
  /// documents contribute to the count. An empty document (e.g. {}) should
  /// be used to count all documents in the collection.
  /// This will result in a full collection scan.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.CountDocuments.
  Future<int> countDocuments(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final bytes = bson.serialize(filter);

    final result = await p.countDocuments(
      collectionId,
      bytes,
      requestContext: transaction?.requestContext,
    );

    return result;
  }

  /// Executes a count command and returns an estimate of the number of
  /// documents in the collection using collection metadata.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.EstimatedDocumentCount.
  Future<int> estimatedDocumentCount({
    Transaction? transaction,
  }) async {
    final result = await p.estimatedDocumentCount(
      collectionId,
      requestContext: transaction?.requestContext,
    );

    return result;
  }

  /// Executes a findAndModify command to delete at most one document in the
  /// collection. and returns the document as it appeared before deletion.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be deleted. If the filter does
  /// not match any documents, a [MongoNoDocumentsError] will be thrown.
  /// If the filter matches multiple documents, one will be selected from
  /// the matched set.
  ///
  /// The optional transaction argument represents a [Transaction] context under
  /// which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.FindOneAndDelete.
  Future<Map<String, dynamic>> findOneAndDelete(
    Map<String, dynamic> filter, {
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final bytes = bson.serialize(filter);

    final result = await p.findOneAndDelete(
      collectionId,
      bytes,
      requestContext: transaction?.requestContext,
    );

    final ret = bson.deserialize(result);
    return ret;
  }

  /// Executes a findAndModify command to update at most one document in
  /// the collection and returns the document as it appeared before updating.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be updated. If the filter does not
  /// match any documents, a [MongoNoDocumentsError] will be thrown. If the
  /// filter matches multiple documents, one will be selected from the
  /// matched set.
  ///
  /// The update parameter must be a document containing update operators
  /// (https://www.mongodb.com/docs/manual/reference/operator/update/)
  /// and can be used to specify the modifications to be made to the selected
  /// document. It cannot be empty.
  ///
  /// The optional options parameter can be used to specify options for the
  /// operation (see [UpdateOptions]).
  ///
  /// The optional transaction argument represents a [Transaction] context
  /// under which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.FindOneAndUpdate.
  Future<Map<String, dynamic>> findOneAndUpdate(
    Map<String, dynamic> filter,
    Map<String, dynamic> update, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(update);
    final result = await p.findOneAndUpdate(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );

    final ret = bson.deserialize(result);
    return ret;
  }

  /// Executes a findAndModify command to replace at most one document in
  /// the collection and returns the document as it appeared before updating.
  ///
  /// The filter parameter must be a document containing query operators and
  /// can be used to select the document to be replaced. If the filter does not
  /// match any documents, a [MongoNoDocumentsError] will be thrown. If the
  /// filter matches multiple documents, one will be selected from the
  /// matched set.
  ///
  /// The replacement parameter must be a document that will be used to replace
  /// the selected document. It cannot contain any update operators
  /// (https://www.mongodb.com/docs/manual/reference/operator/update/).
  ///
  /// The optional options parameter can be used to specify options for the
  /// operation (see [UpdateOptions]).
  ///
  /// The optional transaction argument represents a [Transaction] context
  /// under which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.FindOneAndReplace.
  Future<Map<String, dynamic>> findOneAndReplace(
    Map<String, dynamic> filter,
    Map<String, dynamic> replacement, {
    UpdateOptions? options,
    Transaction? transaction,
  }) async {
    final bson = BSON();
    final filterBytes = bson.serialize(filter);
    final updateBytes = bson.serialize(replacement);
    final result = await p.findOneAndReplace(
      collectionId,
      filterBytes,
      updateBytes,
      options: options,
      requestContext: transaction?.requestContext,
    );
    final ret = bson.deserialize(result);
    return ret;
  }

  /// Executes an aggregate command against the collection and returns a Stream
  /// with the resulting documents.
  ///
  /// The pipeline parameter must be an array of documents, each representing
  /// an aggregation stage. The pipeline can be empty.
  /// See https://www.mongodb.com/docs/manual/reference/operator/aggregation-pipeline/#db-collection-aggregate-stages
  /// for a list of valid stages in aggregations.
  ///
  /// The optional transaction argument represents a [Transaction] context
  /// under which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.Aggregate.
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

  /// Executes a createIndexes command to create an index on the collection and
  /// returns the name of the new index.
  ///
  /// The keys parameter is a map containing the key and index type specifications.
  /// See https://www.mongodb.com/docs/manual/indexes/#indexes.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#IndexView.CreateOne.
  Future<String> createOneIndex(
    Map<String, int> keys, {
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

  /// List executes a listIndexes command and returns a stream with the indexes
  /// in the collection.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#IndexView.List.
  Stream<Map<String, dynamic>> listIndexes() {
    final ret = p.listIndexes(
      collectionId,
    );
    return ret;
  }

  /// DropOne executes a dropIndexes operation to drop an index on the
  /// collection. If the operation succeeds, this returns a document in the
  /// form {nIndexesWas: <int32>}. The "nIndexesWas" field in the response
  /// contains the number of indexes that existed prior to the drop.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#IndexView.DropOne.
  Future<Map<String, dynamic>> dropOneIndex(String name) async {
    final ret = await p.dropOneIndex(collectionId, name);
    return ret;
  }

  /// DropAll executes a dropIndexes operation to drop all indexes on the
  /// collection. If the operation succeeds, this returns a document in the
  /// form {nIndexesWas: <int32>}. The "nIndexesWas" field in the response
  /// contains the number of indexes that existed prior to the drop.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#IndexView.DropAll.
  Future<Map<String, dynamic>> dropAllIndexes() async {
    final ret = await p.dropAllIndexes(collectionId);
    return ret;
  }

  /// Performs a bulk write operation
  /// (https://www.mongodb.com/docs/manual/core/bulk-write-operations/).
  ///
  /// The models parameter must be an array of operations to be executed in
  /// this bulk write. It cannot be empty. See the [BulkWriteModel]
  /// documentation for a list of valid model types.
  ///
  /// The optional transaction argument represents a [Transaction] context
  /// under which the operation is to be executed.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Collection.BulkWrite.
  Future<BulkWriteResult> bulkWrite(
    List<BulkWriteModel> models, {
    BulkWriteOptions? options,
    Transaction? transaction,
  }) async {
    final wms = models.map((p) => p.toProto()).toList();
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
