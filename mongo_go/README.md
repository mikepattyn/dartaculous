MongoDB driver based on the [official MongoDB GO SDK](https://pkg.go.dev/go.mongodb.org/mongo-driver/mongo).

While there is a wonderful community based MongoDB driver, [mongo_dart](https://pub.dev/packages/mongo_dart), this package is a less portable package, but one that includes sessions, which we needed urgently but without the time to actually learn MongoDB's protocol. Therefore, the approach was to leverage GO's existing MongoDB driver, which is an official driver. So, this is the closest we have to get an official MongoDB driver for Dart, albeit probably a very incomplete one for now.

It supports the basic features like CRUD operations ```insertOne```, ..., ```find```, ```aggregate```, some slightly more advanced features like ```watch```. It supports sessions and transactions.

## 2.3.0 Deployment Change

This package requires a native library to run, ```mongo_go.so```. Previous versions of the package shipped the library with the package. This had several downsides:
- The package became too big, getting too close to the limits imposed by pub.dev.
- A version of the native library was required to support each OS, so we simply started by limiting it to Linux.
- Shipping a bit of binary code is never nice in terms of security. We prefer to ship source code, just exactly as we prefer to consume source code instead of binaries.

So, instead of shipping the binary, we ship the GO source code that is required to build the package, and to make things simpler, we expanded our tool, ```ffi-lib``` to automate the process for you (see Getting Started). This does mean you will need GO and GCC to be installed on your development machine.


## Getting started


In order to use this package:
- Add this package to your package dependencies on pubspec.yaml and run ```dart pub get```.

- The package requires a dynamic library, ```mongo_go.so```. You will find it's GO source code under ~/.pub-cache/hosted/pub.dartlang.org/mongo_go-<version>/go/. Each time you upgrade to the latest version of this package, you will most probably need to recompile the latest version of the dynamic library and have it copied to your application. The easiest way to do so is by doing the following:

  1. Ensure you have GO SDK installed on your machine. If you don't, you can download GO from https://go.dev/dl/. Minimum version is 1.19.1.

  2. Ensure you have GCC installed on your machine. For Windows users, you can use [tdm-gcc](https://jmeubank.github.io/tdm-gcc/download/).

  3. Install ffi_lib, by running ```dart pub global activate ffi_lib```. The minimum required version is 1.1.0.
  
  4. For each time you upgrade this package, run the following command on the root directory of your application: ```ffi-lib mongo_go```.

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
