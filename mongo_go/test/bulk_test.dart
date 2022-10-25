import 'dart:isolate';

import 'package:bson/bson.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:test/test.dart';
import 'package:tuple/tuple.dart';

const connectionString = 'mongodb://localhost:27017/';
const testDatabase = 'dart_mongo_test_db';
const testCollection = 'test_collection';

typedef WatchIsolateMessage = Tuple2<Collection, SendPort>;

void main() {
  late Connection connection;
  late Database database;
  late Collection collection;

  setUpAll(() async {
    connection = await Connection.connectWithString(connectionString);
    database = await connection.database(testDatabase);
    await database.drop();
    collection = await database.collection(testCollection);
  });

  tearDownAll(() async {
    connection.dispose();
  });

  group('Bulk Tests', () {
    test('Bulk insert two documents', () async {
      final writeModels = [
        InsertOneModel(document: {'name': 'Alice', 'test': 'bulk_insert'}),
        InsertOneModel(document: {'name': 'Bob', 'test': 'bulk_insert'}),
      ];
      final result = await collection.bulkWrite(writeModels);
      final lst = await collection.find({'test': 'bulk_insert'}).toList();
      expect(lst.length, 2);
      expect(result.insertedCount, 2);
      expect(result.deletedCount, 0);
    });

    test('Bulk insert two documents with transaction', () async {
      await connection.withTransaction(
        (transaction) async {
          final writeModels = [
            InsertOneModel(
                document: {'name': 'Alice', 'test': 'bulk_insert_trx'}),
            InsertOneModel(
                document: {'name': 'Bob', 'test': 'bulk_insert_trx'}),
          ];
          await collection.bulkWrite(writeModels);
        },
      );

      final lst = await collection.find({'test': 'bulk_insert_trx'}).toList();
      expect(lst.length, 2);
    });

    test('Bulk insert two documents with failed transaction', () async {
      expect(() async {
        await connection.withTransaction(
          (transaction) async {
            final writeModels = [
              InsertOneModel(
                  document: {'name': 'Alice', 'test': 'bulk_insert_trx_fail'}),
              InsertOneModel(
                  document: {'name': 'Bob', 'test': 'bulk_insert_trx_fail'}),
            ];
            await collection.bulkWrite(writeModels);

            throw 'oops';
          },
        );
      },
          throwsA(
            const TypeMatcher<String>().having(
              (p0) => p0,
              'Exception is BasicErrorMessage with sent message',
              'oops',
            ),
          ));

      final lst =
          await collection.find({'test': 'bulk_insert_trx_fail'}).toList();
      expect(lst.isEmpty, true);
    });

    test('Bulk insert two documents ids', () async {
      final aId = ObjectId();
      final writeModels = [
        InsertOneModel(
            document: {'_id': aId, 'name': 'Alice', 'test': 'bulk_insert_id'}),
        InsertOneModel(
            document: {'_id': 'bob', 'name': 'Bob', 'test': 'bulk_insert_id'}),
      ];
      final result = await collection.bulkWrite(writeModels);
      final lst = await collection.find({'test': 'bulk_insert_id'}).toList();
      lst.sort(
        (a, b) => (a['name'] as String).compareTo(b['name'] as String),
      );
      expect(lst.length, 2);
      expect(result.insertedCount, 2);
      expect(result.deletedCount, 0);
      expect(lst[0]['_id'], aId);
      expect(lst[1]['_id'], 'bob');
    });

    test('Bulk upsert two documents', () async {
      final writeModels = [
        ReplaceOneModel(
            isUpsert: true,
            filter: {'qualifier': 'a'},
            replacement: {'name': 'Alice', 'test': 'bulk_upsert'}),
        ReplaceOneModel(
            isUpsert: true,
            filter: {'qualifier': 'b'},
            replacement: {'name': 'Bob', 'test': 'bulk_upsert'}),
      ];
      final result = await collection.bulkWrite(writeModels);
      final lst = await collection.find({'test': 'bulk_upsert'}).toList();
      expect(lst.length, 2);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 2);
      expect(result.deletedCount, 0);
      expect(result.upsertedIds.length, 2);
      expect(result.upsertedIds[0], isA<ObjectId>());
      expect(result.upsertedIds[1], isA<ObjectId>());
    });

    test('Bulk upsert two documents, one previously created', () async {
      await collection
          .insertOne({'name': 'Bob', 'test': 'bulk_upsert2', 'qualifier': 'b'});

      final writeModels = [
        ReplaceOneModel(isUpsert: true, filter: {
          'qualifier': 'a'
        }, replacement: {
          'name': 'Alice',
          'test': 'bulk_upsert2',
          'qualifier': 'a',
        }),
        ReplaceOneModel(isUpsert: true, filter: {
          'qualifier': 'b'
        }, replacement: {
          'name': 'Charles',
          'test': 'bulk_upsert2',
          'qualifier': 'b',
        }),
      ];

      final result = await collection.bulkWrite(writeModels);

      final lst = await collection.aggregate([
        {
          '\$match': {'test': 'bulk_upsert2'}
        },
        {
          '\$sort': {'qualifier': 1}
        }
      ]).toList();
      expect(lst.length, 2);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 1);
      expect(result.deletedCount, 0);
      expect(result.upsertedIds.length, 1);
      expect(result.upsertedIds[0], isA<ObjectId>());
      expect(lst[0]['name'], 'Alice');
      expect(lst[1]['name'], 'Charles');
    });

    test('Bulk delete documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'bulk_delete'});
      await collection.insertOne({'name': 'Bob', 'test': 'bulk_delete'});
      await collection.insertOne({'name': 'Charles', 'test': 'bulk_delete'});

      final writeModels = [
        DeleteOneModel(filter: {'name': 'Alice', 'test': 'bulk_delete'}),
        DeleteOneModel(filter: {'name': 'Charles', 'test': 'bulk_delete'}),
      ];

      final result = await collection.bulkWrite(writeModels);

      final lst = await collection.find({'test': 'bulk_delete'}).toList();
      expect(lst.length, 1);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 0);
      expect(result.deletedCount, 2);
      expect(result.upsertedIds.length, 0);
      expect(lst[0]['name'], 'Bob');
    });

    test('Bulk delete one documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'bulk_delete_one'});
      await collection.insertOne({'name': 'Bob', 'test': 'bulk_delete_one'});
      await collection
          .insertOne({'name': 'Charles', 'test': 'bulk_delete_one'});

      final writeModels = [
        DeleteOneModel(filter: {'test': 'bulk_delete_one'}),
      ];

      final result = await collection.bulkWrite(writeModels);

      final lst = await collection.find({'test': 'bulk_delete_one'}).toList();
      expect(lst.length, 2);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 0);
      expect(result.deletedCount, 1);
      expect(result.upsertedIds.length, 0);
      expect(lst[0]['name'], 'Bob');
      expect(lst[1]['name'], 'Charles');
    });

    test('Bulk delete many documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'bulk_delete_many'});
      await collection.insertOne({'name': 'Bob', 'test': 'bulk_delete_many'});
      await collection
          .insertOne({'name': 'Charles', 'test': 'bulk_delete_many'});

      final writeModels = [
        DeleteManyModel(filter: {'test': 'bulk_delete_many'}),
      ];

      final result = await collection.bulkWrite(writeModels);

      final lst = await collection.find({'test': 'bulk_delete_many'}).toList();
      expect(lst.isEmpty, true);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 0);
      expect(result.deletedCount, 3);
      expect(result.upsertedIds.length, 0);
    });

    test('Bulk update one documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'bulk_update_one'});
      await collection.insertOne({'name': 'Bob', 'test': 'bulk_update_one'});
      await collection
          .insertOne({'name': 'Charles', 'test': 'bulk_update_one'});

      final writeModels = [
        UpdateOneModel(filter: {
          'test': 'bulk_update_one'
        }, update: {
          '\$set': {'name': 'changed'}
        }),
      ];

      final result = await collection.bulkWrite(writeModels);

      final lst = await collection
          .find({'test': 'bulk_update_one', 'name': 'changed'}).toList();
      expect(lst.length, 1);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 0);
      expect(result.modifiedCount, 1);
      expect(result.deletedCount, 0);
      expect(result.upsertedIds.length, 0);
    });

    test('Bulk update many documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'bulk_update_many'});
      await collection.insertOne({'name': 'Bob', 'test': 'bulk_update_many'});
      await collection
          .insertOne({'name': 'Charles', 'test': 'bulk_update_many'});

      final writeModels = [
        UpdateManyModel(filter: {
          'test': 'bulk_update_many'
        }, update: {
          '\$set': {'name': 'changed'}
        }),
      ];

      final result = await collection.bulkWrite(writeModels);

      final lst = await collection
          .find({'test': 'bulk_update_many', 'name': 'changed'}).toList();
      expect(lst.length, 3);
      expect(result.insertedCount, 0);
      expect(result.upsertedCount, 0);
      expect(result.modifiedCount, 3);
      expect(result.deletedCount, 0);
      expect(result.upsertedIds.length, 0);
    });
  }); // end group
}
