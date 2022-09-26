import 'package:mongo_go/mongo_go.dart';

void main() async {
  // you can keep this as a singleton.
  final connection =
      await Connection.connectWithString("mongodb://localhost:27021/");

  final database = await connection.database("some_database");
  final collection = await database.collection("some_collection");

  await collection.createOneIndex({'name': 1});

  await collection.insertOne({
    'name': 'Alice',
    'education': 'bachelor',
  });

  final lst = await collection.find({'name': 'Alice'}).toList();
  print(lst);

  try {
    await connection.withTransaction(
      (transaction) async {
        await collection.insertOne(
          {'name': 'Charles', "test": "trxFail"},
          transaction: transaction,
        );
        await collection.insertOne(
          {'name': 'Bob', "test": "trxFail"},
          transaction: transaction,
        );
        throw 'oops';
      },
    );
  } catch (_) {
    print(
        'Check that neither Charles or Bob were inserted, because we threw \'oops\'');
  }

  final bachelors = collection.aggregate([
    {
      '\$match': {'education': 'bachelor'}
    }
  ]);

  await for (final batchelor in bachelors) {
    print(batchelor['name']);
  }
}
