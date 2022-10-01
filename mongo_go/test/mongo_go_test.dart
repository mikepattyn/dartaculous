import 'dart:async';
import 'dart:isolate';

import 'package:bson/bson.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:test/test.dart';
import 'package:tuple/tuple.dart';

const connectionString = "mongodb://localhost:27021/";
const testDatabase = "dart_mongo_test_db";
const testCollection = "test_collection";

typedef WatchIsolateMessage = Tuple2<Collection, SendPort>;

void main() {
  group('Basic Tests', () {
    late Connection connection;
    late Database database;
    late Collection collection;

    setUpAll(() async {
      // Connection.initialize();
      connection = await Connection.connectWithString(connectionString);
      database = await connection.database(testDatabase);
      await database.drop();
      collection = await database.collection(testCollection);
    });

    tearDownAll(() async {
      connection.dispose();
    });

    test('Insert Document', () async {
      final result = await collection
          .insertOne({'name': 'Alice', 'age': 40, "test": "insertOne"});

      expect(result.insertedId, isA<ObjectId>());
    });

    test('Insert Document with client generated objectId', () async {
      final id = ObjectId(clientMode: true);
      final result = await collection.insertOne(
          {'_id': id, 'name': 'Bob', 'age': 41, "test": "insertOne_oid"});
      expect(result.insertedId, isA<ObjectId>());
    });
    test(
      'Find',
      () async {
        const n = 1000;
        final docs = List<Map<String, dynamic>>.generate(n, (index) {
          return {'name': 'Person $index', 'age': 40, 'test': 'stream'};
        });
        await collection.insertMany(docs);

        await _doFind(collection);

        try {
          await _doFind(collection, 300);
        } catch (_) {}
        // just trying to force the GC to see if the sc is released
        for (int i = 0; i < 2; i++) {
          await doSomething(i);
        }
        final results = await _doFind(collection);
        for (int i = 0; i < 2; i++) {
          await doSomething(i);
        }

        expect(results.item1, n);
        expect(results.item2["name"], "Person 0");
        expect(results.item3["name"], "Person ${n - 1}");
      },
      timeout: Timeout(Duration(minutes: 5)),
    );

    test('FindOne Document', () async {
      await collection.insertOne({'name': 'Alice', "test": "findOne"});
      await collection.insertOne({'name': 'Bob', "test": "findOne"});

      final doc = await collection.findOne({'test': 'findOne'});
      expect(doc['name'], 'Alice');
    });

    test('FindNone Document', () async {
      await collection.insertOne({'name': 'Alice', "test": "findNone"});
      await collection.insertOne({'name': 'Bob', "test": "findNone"});

      expect(() async {
        await collection.findOne({
          'test': 'findNone',
          'name': 'Charles',
        });
      }, throwsA(const TypeMatcher<MongoNoDocumentsError>()));
    });

    test(
      'Aggregate',
      () async {
        final docs = List<Map<String, dynamic>>.generate(4, (index) {
          return {'name': 'Person $index', 'age': 45, 'test': 'aggregate'};
        });
        await collection.insertMany(docs);

        final resultStream = collection.aggregate([
          {
            r'$match': {'test': 'aggregate'}
          },
          {
            r'$project': {'name': 1}
          }
        ]);
        final resultList = await resultStream.toList();
        expect(resultList.length, 4);
        expect(resultList[0]["name"], 'Person 0');
        expect(resultList[3]["name"], 'Person 3');
        expect(resultList[0].containsKey('age'), false);
        expect(resultList[0].containsKey('test'), false);
      },
      timeout: Timeout(Duration(minutes: 5)),
    );

    test(
      'Regex',
      () async {
        final docs = List<Map<String, dynamic>>.generate(4, (index) {
          return {'name': 'Person $index', 'age': 45, 'test': 'aggregate'};
        });
        await collection.insertMany(docs);
        await collection.insertOne({'name': 'AaLice', 'test': 'regex'});
        await collection.insertOne({'name': 'Alice', 'test': 'regex'});
        await collection.insertOne({'name': 'alice', 'test': 'regex'});
        await collection.insertOne({'name': 'Bob', 'test': 'regex'});
        await collection.insertOne({'name': 'aLice', 'test': 'regex'});
        await collection.insertOne({'name': 'ALICE', 'test': 'regex'});
        final escaped = RegExp.escape('alice');
        final resultStream = collection.aggregate([
          {
            r'$match': {
              'test': 'regex',
              'name': {r'$regex': '^$escaped\$', r'$options': 'i'},
            }
          },
          {
            r'$project': {'name': 1}
          }
        ]);
        final resultList = await resultStream.toList();
        expect(resultList.length, 4);
        expect(resultList[0]["name"], 'Alice');
        expect(resultList[1]["name"], 'alice');
        expect(resultList[2]["name"], 'aLice');
        expect(resultList[3]["name"], 'ALICE');
      },
      timeout: Timeout(Duration(minutes: 5)),
    );

    test(
      'Watch',
      () async {
        final receivePort = ReceivePort();
        final receivedNames = <String>[];
        receivePort.listen((message) {
          receivedNames.add(message);
        });

        final msg = WatchIsolateMessage(collection, receivePort.sendPort);
        final watcher = Isolate.spawn<WatchIsolateMessage>((msg) async {
          final collection = msg.item1;
          final sendPort = msg.item2;
          final stream = collection.watch([
            {
              r'$match': {'fullDocument.include': true}
            }
          ]);

          var i = 0;
          await for (final doc in stream) {
            final name = doc['fullDocument']['name'];
            sendPort.send(name);
            if (++i >= 2) {
              return;
            }
          }
        }, msg);

        final inserts = Future(() async {
          await Future.delayed(Duration(seconds: 1));

          await collection.insertOne({'name': 'Alice', 'include': true});
          await collection.insertOne({'name': 'Bob'});
          await collection.insertOne({'name': 'Charles', 'include': true});
        });
        await Future.wait([inserts, watcher]);
        await Future.delayed(Duration(seconds: 1));
        expect(receivedNames.length, 2);
        expect(receivedNames[0], 'Alice');
        expect(receivedNames[1], 'Charles');
      },
      timeout: Timeout(Duration(minutes: 5)),
    );

    test('UpdateOne Document', () async {
      await collection.insertOne({'name': 'Alice', "test": "updateOne"});
      await collection.insertOne({'name': 'Bob', "test": "updateOne"});

      await collection.updateOne({
        "test": "updateOne"
      }, {
        r'$set': {'name': 'Updated'},
      });

      final lst = await collection
          .find({'name': 'Updated', 'test': 'updateOne'}).toList();
      expect(lst.length, 1);
    });

    test('UpdateTwo Document', () async {
      await collection.insertOne({'name': 'Alice', "test": "updateTwo"});
      await collection.insertOne({'name': 'Bob', "test": "updateTwo"});

      await collection.updateMany({
        "test": "updateTwo"
      }, {
        r'$set': {'name': 'Updated 2'},
      });

      final lst = await collection
          .find({'name': 'Updated 2', 'test': 'updateTwo'}).toList();
      expect(lst.length, 2);
    });

    test('Replace One Document', () async {
      await collection.insertOne({'name': 'Alice', "test": "replaceOne"});
      await collection.insertOne({'name': 'Bob', "test": "replaceOne"});

      await collection.replaceOne(
        {'test': 'replaceOne'},
        {'name': 'replaced', 'test': 'replaceOne'},
      );

      final lst = await collection
          .find({'name': 'replaced', 'test': 'replaceOne'}).toList();
      expect(lst.length, 1);
    });

    test('Delete One Document', () async {
      await collection.insertOne({'name': 'Alice', "test": "deleteOne"});
      await collection.insertOne({'name': 'Bob', "test": "deleteOne"});

      await collection.deleteOne(
        {'test': 'deleteOne'},
      );

      final lst = await collection.find({'test': 'deleteOne'}).toList();
      expect(lst.length, 1);
    });

    test('Insert two documents with transaction', () async {
      await connection.withTransaction(
        (transaction) async {
          await collection.insertOne(
            {'name': 'Alice', "test": "trxTwo"},
            transaction: transaction,
          );
          await collection.insertOne(
            {'name': 'Bob', "test": "trxTwo"},
            transaction: transaction,
          );
        },
      );

      final lst = await collection.find({'test': 'trxTwo'}).toList();
      expect(lst.length, 2);
    });

    test('Insert two documents with failed transaction', () async {
      expect(() async {
        await connection.withTransaction(
          (transaction) async {
            await collection.insertOne(
              {'name': 'Alice', "test": "trxFail"},
              transaction: transaction,
            );
            await collection.insertOne(
              {'name': 'Bob', "test": "trxFail"},
              transaction: transaction,
            );
            throw 'oops';
          },
        );
      },
          throwsA(
            const TypeMatcher<MongoError>().having(
              (p0) => p0.message,
              'Exception is BasicErrorMessage with sent message',
              'oops',
            ),
          ));

      final lst = await collection.find({'test': 'trxFail'}).toList();
      expect(lst.isEmpty, true);
    });

    test('Delete Many Documents', () async {
      await collection.insertOne({'name': 'Alice', "test": "deleteMany"});
      await collection.insertOne({'name': 'Bob', "test": "deleteMany"});

      await collection.deleteMany(
        {'test': 'deleteMany'},
      );

      final lst = await collection.find({'test': 'deleteMany'}).toList();
      expect(lst.length, 0);
    });

    test('Create Index One', () async {
      final result = await collection.createOneIndex(
        {
          'name': 1,
          'age': -1,
        },
        indexOptions: IndexOptions(name: 'first_index'),
      );
      expect(result, "first_index");
    });

    test('Create Index with weights', () async {
      final result = await collection.createOneIndex(
        {
          'name': 1,
          'age': -1,
          'weigh': 1,
        },
        indexOptions: IndexOptions(
          name: 'weighted',
          weights: {'name': 10, 'age': 5},
        ),
      );
      expect(result, "weighted");
    });

    test('Create Unique One', () async {
      await collection.deleteMany({});
      final result = await collection.createOneIndex(
        {
          'name': 1,
          'age': -1,
          'u1': 1,
        },
        indexOptions: IndexOptions(
          name: 'first_unique_index',
          unique: true,
        ),
      );
      await collection.dropAllIndexes();
      expect(result, 'first_unique_index');
    });

    test('Insert duplicate key', () async {
      await collection.deleteMany({});
      final result = await collection.createOneIndex(
        {
          'name': 1,
          'age': -1,
          'u2': 1,
        },
        indexOptions: IndexOptions(
          name: 'second_unique_index',
          unique: true,
        ),
      );

      try {
        await collection.insertOne({
          'name': 'Arthur',
          'age': 35,
          'u2': 1,
          'test': 'unique2',
          'qual': 1,
        });

        expect(() async {
          await collection.insertOne({
            'name': 'Arthur',
            'age': 35,
            'u2': 1,
            'test': 'unique2',
            'qual': 2,
          });
        }, throwsA(const TypeMatcher<MongoDuplicateKeyError>()));
      } finally {
        await collection.dropOneIndex('second_unique_index');
      }

      expect(result, 'second_unique_index');
    });

    test('List Indexes', () async {
      await collection.createOneIndex({
        'name': 1,
        'age': -1,
        'list': 1,
      }, indexOptions: IndexOptions(name: 'index_for_list_test'));
      final indexes = await collection.listIndexes().toList();
      expect(indexes.any((ix) => ix['name'] == 'index_for_list_test'), true);
    });

    test('Drop One Index', () async {
      await collection.createOneIndex({
        'name': 1,
        'age': -1,
        'delete1': 1,
      }, indexOptions: IndexOptions(name: 'index_for_delete_test'));
      await collection.createOneIndex({
        'name': 1,
        'age': -1,
        'delete2': 1,
      }, indexOptions: IndexOptions(name: 'index_for_delete_test_2'));
      final initialIndexes = await collection.listIndexes().toList();
      final initialCount = initialIndexes.length;
      await collection.dropOneIndex('index_for_delete_test');
      final finalIndexes = await collection.listIndexes().toList();
      final finalCount = finalIndexes.length;
      expect(initialCount - finalCount, 1);
    });

    test('Bulk insert two documents', () async {
      final writeModels = [
        InsertOneModel(document: {'name': 'Alice', "test": "bulk_insert"}),
        InsertOneModel(document: {'name': 'Bob', "test": "bulk_insert"}),
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
                document: {'name': 'Alice', "test": "bulk_insert_trx"}),
            InsertOneModel(
                document: {'name': 'Bob', "test": "bulk_insert_trx"}),
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
                  document: {'name': 'Alice', "test": "bulk_insert_trx_fail"}),
              InsertOneModel(
                  document: {'name': 'Bob', "test": "bulk_insert_trx_fail"}),
            ];
            await collection.bulkWrite(writeModels);

            throw 'oops';
          },
        );
      },
          throwsA(
            const TypeMatcher<MongoError>().having(
              (p0) => p0.message,
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
            document: {'_id': aId, 'name': 'Alice', "test": "bulk_insert_id"}),
        InsertOneModel(
            document: {'_id': 'bob', 'name': 'Bob', "test": "bulk_insert_id"}),
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
            replacement: {'name': 'Alice', "test": "bulk_upsert"}),
        ReplaceOneModel(
            isUpsert: true,
            filter: {'qualifier': 'b'},
            replacement: {'name': 'Bob', "test": "bulk_upsert"}),
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
          "test": "bulk_upsert2",
          'qualifier': 'a',
        }),
        ReplaceOneModel(isUpsert: true, filter: {
          'qualifier': 'b'
        }, replacement: {
          'name': 'Charles',
          "test": "bulk_upsert2",
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

    test('Bulk update one documents', () async {
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

typedef DoFindRet = Tuple3<int, Map<String, dynamic>, Map<String, dynamic>>;

Future<DoFindRet> _doFind(
  Collection collection, [
  int? throwOnThreshold,
]) async {
  final results = collection.find({"test": "stream"});

  int cnt = 0;
  Map<String, dynamic> firstItem = {};
  Map<String, dynamic> lastItem = {};
  await for (final item in results) {
    if (cnt == 0) {
      firstItem = item;
    }
    if (cnt == throwOnThreshold) throw 'AUCH';
    lastItem = item;
    cnt++;
  }

  return DoFindRet(cnt, firstItem, lastItem);
}

Future<void> doSomething(int i) async {
  final str = 'doing something $i';
  if (str.isEmpty) return; // intentional nop
}
