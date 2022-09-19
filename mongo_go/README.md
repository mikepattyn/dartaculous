MongoDB driver based on the [official MongoDB GO SDK](https://pkg.go.dev/go.mongodb.org/mongo-driver/mongo).

While there is a wonderful community based MongoDB driver, [mongo_dart](https://pub.dev/packages/mongo_dart), this package is a less portable package, but one that includes sessions, which we needed urgently but without the time to actually learn MongoDB's protocol. Therefore, the approach was to leverage GO's existing MongoDB driver, which is an official driver. So, this is the closest we have to get an official MongoDB driver for Dart, albeit probably a very incomplete one for now.

It supports the basic features like CRUD operations ```insertOne```, ..., ```find```, ```aggregate```, some slightly more advanced features like ```watch```. It supports sessions and transactions.

## Getting started

In order to use this package:
- Add this package to your package dependencies on pubspec.yaml.

- The package requires a dynamic library, ```mongo_proxy.so```, which you need to be able to access from your application. Find the physical path to the package and you may either add that path to your library search path, or you may copy or add a symbolic link from the library, to the root of your app's package. 

Download the library from https://gitlab.com/squarealfa/dart_framework/-/blob/mongo_improvements/mongo_go/mongo_proxy.so.



```dart

import 'package:mongo_go/mongo_go.dart';

void main() async {
  // Once during the lifecycle of the application
  // if you spawn several Isolates, you do *not* need
  // to call initialize on each Isolate, only once for
  // all isolates, before any other use of this package.
  // This call initializes the communications between
  // Dart and the GO package that hosts the MongoDB driver.
  Connection.initialize();

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

```
