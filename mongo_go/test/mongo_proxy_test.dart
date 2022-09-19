import 'dart:async';
import 'dart:isolate';

import 'package:go_bridge/gen/common/basic_error_message.pb.dart';
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
      Connection.initialize();
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
      expect(result.keys.first, "insertedid");
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
            const TypeMatcher<BasicErrorMessage>().having(
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
      expect(result, 'first_unique_index');
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
