MongoDB driver based on the [official MongoDB GO SDK](https://pkg.go.dev/go.mongodb.org/mongo-driver/mongo).

While there is a wonderful community based MongoDB driver, [mongo_dart](https://pub.dev/packages/mongo_dart), this package is a less portable package, but one that includes sessions, which we needed urgently but without the time to actually learn MongoDB's protocol. Therefore, the approach was to leverage GO's existing MongoDB driver, which is an official driver. So, this is the closest we have to get an official MongoDB driver for Dart, albeit probably a very incomplete one for now.

It supports the basic features like CRUD operations ```insertOne```, ..., ```find```, ```aggregate```, some slightly more advanced features like ```watch```. It supports sessions and transactions.

## Getting started

In order to use this package:
- Add this package to your package dependencies on pubspec.yaml.

- The package requires a dynamic library, ```mongo_go.so```, which is shipped with the package. You will find it under ~/.pub-cache/hosted/pub.dartlang.org/mongo_go-<version>/lib/mongo_go.so. Each time you upgrade to the latest version of this package, you will most probably need to get the latest version of the dynamic library copied to your application. The easiest way to do so is by running the following commands on the root directory of your application:

```sh
# This needs to be done only once:
dart pub global activate ffi_lib 

# This should be done everytime you update mongo_go package:
ffi-lib mongo_go 
```

Here's a quick example of the package's usage:

```dart

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

```
