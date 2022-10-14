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

  group('Crud Tests', () {
    test('Create Index One', () async {
      final result = await collection.createOneIndex(
        {
          'name': 1,
          'age': -1,
        },
        indexOptions: IndexOptions(name: 'first_index'),
      );
      expect(result, 'first_index');
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
      expect(result, 'weighted');
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
  }); // end group
}
