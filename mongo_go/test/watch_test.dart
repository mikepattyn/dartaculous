import 'dart:async';
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

  group('Watch Tests', () {
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
  }); // end group
}
