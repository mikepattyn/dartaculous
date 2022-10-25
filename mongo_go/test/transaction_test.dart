import 'dart:isolate';

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

  group('Transaction Tests', () {
    test('Insert two documents with transaction', () async {
      await connection.withTransaction(
        (session) async {
          await collection.insertOne(
            {'name': 'Alice', 'test': 'trxTwo'},
            session: session,
          );
          await collection.insertOne(
            {'name': 'Bob', 'test': 'trxTwo'},
            session: session,
          );
        },
      );

      final lst = await collection.find({'test': 'trxTwo'}).toList();
      expect(lst.length, 2);
    });

    test('Insert two documents with failed transaction', () async {
      expect(() async {
        await connection.withTransaction(
          (session) async {
            await collection.insertOne(
              {'name': 'Alice', 'test': 'trxFail'},
              session: session,
            );
            await collection.insertOne(
              {'name': 'Bob', 'test': 'trxFail'},
              session: session,
            );
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

      final lst = await collection.find({'test': 'trxFail'}).toList();
      expect(lst.isEmpty, true);
    });
  }); // end group
}
