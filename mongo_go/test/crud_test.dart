import 'dart:async';
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

  group('Crud Tests', () {
    test('Insert Document', () async {
      final result = await collection
          .insertOne({'name': 'Alice', 'age': 40, 'test': 'insertOne'});

      expect(result.insertedId, isA<ObjectId>());
    });

    test('Insert Document with client generated objectId', () async {
      final id = ObjectId(clientMode: true);
      final result = await collection.insertOne(
          {'_id': id, 'name': 'Bob', 'age': 41, 'test': 'insertOne_oid'});
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
          await _doSomething(i);
        }
        final results = await _doFind(collection);
        for (int i = 0; i < 2; i++) {
          await _doSomething(i);
        }

        expect(results.item1, n);
        expect(results.item2['name'], 'Person 0');
        expect(results.item3['name'], 'Person ${n - 1}');
      },
      timeout: Timeout(Duration(minutes: 5)),
    );

    test('FindOne Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'findOne'});
      await collection.insertOne({'name': 'Bob', 'test': 'findOne'});

      final doc = await collection.findOne({'test': 'findOne'});
      expect(doc['name'], 'Alice');
    });

    test('FindNone Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'findNone'});
      await collection.insertOne({'name': 'Bob', 'test': 'findNone'});

      expect(() async {
        await collection.findOne({
          'test': 'findNone',
          'name': 'Charles',
        });
      }, throwsA(const TypeMatcher<MongoNoDocumentsError>()));
    });

    test('FindOneAndDelete Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'findOneAndDelete'});
      await collection.insertOne({
        'name': 'Bob',
        'test': 'findOneAndDelete',
        'height': 170,
      });
      await collection
          .insertOne({'name': 'Charles', 'test': 'findOneAndDelete'});

      final doc = await collection
          .findOneAndDelete({'name': 'Bob', 'test': 'findOneAndDelete'});
      final remaining =
          await collection.find({'test': 'findOneAndDelete'}).toList();

      expect(doc['name'], 'Bob');
      expect(doc['height'], 170);
      expect(remaining.length, 2);
      expect(remaining.first['name'], 'Alice');
      expect(remaining.last['name'], 'Charles');
    });

    test('FindOneAndUpdate Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'findOneAndUpdate'});
      await collection.insertOne({
        'name': 'Bob',
        'test': 'findOneAndUpdate',
        'height': 180,
      });
      await collection
          .insertOne({'name': 'Charles', 'test': 'findOneAndUpdate'});

      final doc = await collection.findOneAndUpdate({
        'name': 'Bob',
        'test': 'findOneAndUpdate'
      }, {
        r'$set': {'height': 190},
      });
      final all = await collection.find({'test': 'findOneAndUpdate'}).toList();

      expect(doc['name'], 'Bob');
      expect(doc['height'], 180);

      expect(all.length, 3);
      expect(all[0]['name'], 'Alice');
      expect(all[1]['name'], 'Bob');
      expect(all[1]['height'], 190);
      expect(all[2]['name'], 'Charles');
    });

    test('FindOneAndReplace Document', () async {
      await collection
          .insertOne({'name': 'Alice', 'test': 'findOneAndReplace'});
      await collection.insertOne({
        'name': 'Bob',
        'test': 'findOneAndReplace',
        'height': 160,
      });
      await collection
          .insertOne({'name': 'Charles', 'test': 'findOneAndReplace'});

      final doc = await collection.findOneAndReplace({
        'name': 'Bob',
        'test': 'findOneAndReplace'
      }, {
        'name': 'Bob',
        'test': 'findOneAndReplace',
        'height': 150,
      });
      final all = await collection.find({'test': 'findOneAndReplace'}).toList();

      expect(doc['name'], 'Bob');
      expect(doc['height'], 160);

      expect(all.length, 3);
      expect(all[0]['name'], 'Alice');
      expect(all[1]['name'], 'Bob');
      expect(all[1]['height'], 150);
      expect(all[2]['name'], 'Charles');
    });

    test('Count Documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'cntDocs'});
      await collection.insertOne({'name': 'Bob', 'test': 'cntDocs'});

      final cnt = await collection.countDocuments({'test': 'cntDocs'});
      expect(cnt, 2);
    });

    test('Estimated Count', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'estCntDocs'});
      await collection.insertOne({'name': 'Bob', 'test': 'estCntDocs'});

      final cnt = await collection.estimatedDocumentCount();
      expect(cnt, greaterThanOrEqualTo(2));
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
        expect(resultList[0]['name'], 'Person 0');
        expect(resultList[3]['name'], 'Person 3');
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
        expect(resultList[0]['name'], 'Alice');
        expect(resultList[1]['name'], 'alice');
        expect(resultList[2]['name'], 'aLice');
        expect(resultList[3]['name'], 'ALICE');
      },
      timeout: Timeout(Duration(minutes: 5)),
    );

    test('UpdateOne Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'updateOne'});
      await collection.insertOne({'name': 'Bob', 'test': 'updateOne'});

      await collection.updateOne({
        'test': 'updateOne'
      }, {
        r'$set': {'name': 'Updated'},
      });

      final lst = await collection
          .find({'name': 'Updated', 'test': 'updateOne'}).toList();
      expect(lst.length, 1);
    });

    test('UpdateTwo Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'updateTwo'});
      await collection.insertOne({'name': 'Bob', 'test': 'updateTwo'});

      await collection.updateMany({
        'test': 'updateTwo'
      }, {
        r'$set': {'name': 'Updated 2'},
      });

      final lst = await collection
          .find({'name': 'Updated 2', 'test': 'updateTwo'}).toList();
      expect(lst.length, 2);
    });

    test('Replace One Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'replaceOne'});
      await collection.insertOne({'name': 'Bob', 'test': 'replaceOne'});

      await collection.replaceOne(
        {'test': 'replaceOne'},
        {'name': 'replaced', 'test': 'replaceOne'},
      );

      final lst = await collection
          .find({'name': 'replaced', 'test': 'replaceOne'}).toList();
      expect(lst.length, 1);
    });

    test('Delete One Document', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'deleteOne'});
      await collection.insertOne({'name': 'Bob', 'test': 'deleteOne'});

      await collection.deleteOne(
        {'test': 'deleteOne'},
      );

      final lst = await collection.find({'test': 'deleteOne'}).toList();
      expect(lst.length, 1);
    });

    test('Delete Many Documents', () async {
      await collection.insertOne({'name': 'Alice', 'test': 'deleteMany'});
      await collection.insertOne({'name': 'Bob', 'test': 'deleteMany'});

      await collection.deleteMany(
        {'test': 'deleteMany'},
      );

      final lst = await collection.find({'test': 'deleteMany'}).toList();
      expect(lst.length, 0);
    });
  }); // end group
}

typedef DoFindRet = Tuple3<int, Map<String, dynamic>, Map<String, dynamic>>;

Future<DoFindRet> _doFind(
  Collection collection, [
  int? throwOnThreshold,
]) async {
  final results = collection.find({'test': 'stream'});

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

Future<void> _doSomething(int i) async {
  final str = 'doing something $i';
  if (str.isEmpty) return; // intentional nop
}
