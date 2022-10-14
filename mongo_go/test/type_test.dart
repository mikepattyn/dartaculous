import 'dart:isolate';

import 'package:bson/bson.dart';
import 'package:decimal/decimal.dart';
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

  group('Type Tests', () {
    test('Double', () async {
      const dbl = 1234.4532;
      await collection.insertOne({'value': dbl, 'test': 'type_double'});

      final doc = (await collection.find({
        'test': 'type_double',
        'value': {r'$type': 1}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<double>());
      expect(value, dbl);
    });

    test('String', () async {
      await collection
          .insertOne({'value': 'some_value', 'test': 'type_string'});

      final doc = (await collection.find({
        'test': 'type_string',
        'value': {r'$type': 2}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<String>());
      expect(value, 'some_value');
    });

    test('Object', () async {
      final obj = <String, dynamic>{};
      await collection.insertOne({'value': obj, 'test': 'type_obj'});

      final doc = (await collection.find({
        'test': 'type_obj',
        'value': {r'$type': 3}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<Map<String, dynamic>>());
      expect(value, obj);
    });

    test('Array', () async {
      final arr = [];
      await collection.insertOne({'value': arr, 'test': 'type_array'});

      final doc = (await collection.find({
        'test': 'type_array',
        'value': {r'$type': 4}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<List>());
      expect(value, arr);
    });

    test('ObjectId', () async {
      final oid = ObjectId();
      await collection.insertOne({'value': oid, 'test': 'type_objectId'});

      final doc = (await collection.find({
        'test': 'type_objectId',
        'value': {r'$type': 7}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<ObjectId>());
      expect(value, oid);
    });

    test('Boolean', () async {
      await collection.insertOne({'value': true, 'test': 'type_bool'});

      final doc = (await collection.find({
        'test': 'type_bool',
        'value': {r'$type': 8}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<bool>());
      expect(value, true);
    });

    test('DateTime', () async {
      final now = DateTime.now();
      await collection.insertOne({'value': now, 'test': 'type_datetime'});

      final doc = (await collection.find({
        'test': 'type_datetime',
        'value': {r'$type': 9}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<DateTime>());
      // mongodb stores only to the milliseconds, while Dart
      // goes down to microseconds, so we cannot compare
      // dates directly, but milliseconds
      expect((value as DateTime).millisecondsSinceEpoch,
          now.millisecondsSinceEpoch);
    });

    test('Null', () async {
      await collection.insertOne({'value': null, 'test': 'type_null'});

      final doc = (await collection.find({
        'test': 'type_null',
        'value': {r'$type': 10}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, null);
    });

    test('int32', () async {
      await collection.insertOne({'value': 6, 'test': 'type_int32'});

      final doc = (await collection.find({
        'test': 'type_int32',
        'value': {r'$type': 16}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<int>());
      expect(value, 6);
    });

    test('int64', () async {
      const bigNumber = 674294967296; // greater than what fits in int32
      await collection.insertOne({'value': bigNumber, 'test': 'type_int64'});

      final doc = (await collection.find({
        'test': 'type_int64',
        'value': {r'$type': 18}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<int>());
      expect(value, bigNumber);
    });

    test('Decimal', () async {
      final dec = Decimal.parse(
          "1100043433455454.454545"); // greater than what fits in int32
      await collection.insertOne({'value': dec, 'test': 'type_decimal'});

      final doc = (await collection.find({
        'test': 'type_decimal',
        'value': {r'$type': 19}
      }).toList())
          .first;
      final value = doc['value'];

      expect(value, isA<Decimal>());
      expect(value, dec);
    });
  }); // end group
}
