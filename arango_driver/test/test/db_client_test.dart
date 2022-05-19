import 'package:arango_driver/arango_driver.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'test_conf.dart';

void main() {
  group('Client can:', () {
    final sch = dbscheme;
    final h = dbhost;
    final p = dbport;
    const systemDb = '_system';
    const testDb = 'test_temp_db';
    const testCollection = 'test_temp_collection';
    late String testDocumentKey;
    String testDocumentRev;
    var testMultipleDocumentsKeys = <String>[];
    final u = dbuser;
    final ps = dbpass;
    const realm = '';

    var clientSystemDb = DbClient(
        scheme: sch,
        host: h,
        port: p,
        db: systemDb,
        user: u,
        pass: ps,
        realm: realm);

    test('Get current db info', () async {
      var answer = await clientSystemDb.currentDatabase();

      expect(answer.name, equals(systemDb));
      expect(answer.isSystem, equals(true));
    });

    test('List of accessible databases', () async {
      var answer = await clientSystemDb.userDatabases();
      expect(answer, contains(systemDb));
    });

    test('List of all existing databases', () async {
      var answer = await clientSystemDb.existingDatabases();
      expect(answer, contains(systemDb));
    });

    test('Create a database', () async {
      // first, ask about all databases
      var databases = await clientSystemDb.existingDatabases();
      // skip test if test database already exists
      if (databases.contains(testDb)) {
        print(
            // ignore: lines_longer_than_80_chars
            'Skip test for creating database because database $testDb already exists.');
        return;
      }
      // creating the test database
      var result = await clientSystemDb.createDatabase(
          CreateDatabaseInfo(testDb, [DatabaseUser('u', 'ps')]));

      expect(result, equals(true));
    });

    // changing current database
    var testDbClient = DbClient(
        scheme: sch,
        host: h,
        port: p,
        db: testDb,
        user: u,
        pass: ps,
        realm: realm);

    test('create collection', () async {
      var allCollectionsAnsw = await testDbClient.allCollections();
      var alreadyExists =
          allCollectionsAnsw.any((coll) => coll.name == testCollection);
      if (alreadyExists) {
        print('Skip creating collection $testCollection bexause it is exists');
      } else {
        var answer = await testDbClient
            .createCollection(CollectionCriteria(testCollection));

        expect(answer.collectionInfo.name, testCollection);
      }
    });

    test('truncate collection', () async {
      var answer = await testDbClient.truncateCollection(testCollection);
      expect(answer.name, testCollection);
    });

    test('get collection info', () async {
      var answer = await testDbClient.collectionInfo(testCollection);
      expect(answer.name, testCollection);
    });

    test('get collection properties', () async {
      var answer = await testDbClient.collectionProperties(testCollection);
      expect(answer.collectionInfo.name, testCollection);
    });

    test('get count of documents in collection', () async {
      var answer = await testDbClient.documentsCount(testCollection);

      expect(answer.collectionInfo.count, 0);
    });

    test('get statistics for a collection', () async {
      await testDbClient.collectionStatistics(testCollection);
    });

    test('get collection revision id', () async {
      await testDbClient.collectionRevisionId(testCollection);
    });

    test('get collection checksum', () async {
      await testDbClient.collectionChecksum(testCollection);
    });

    test('get all collections', () async {
      await testDbClient.allCollections();
    });

    test('create document', () async {
      var answer =
          await testDbClient.createDocument(testCollection, {'Hello': 'World'});
      // save document key for next test:
      testDocumentKey = answer.identifier.key;
    });

    test('getDocumentByKey returns Map with _key', () async {
      var answer =
          await testDbClient.getDocumentByKey(testCollection, testDocumentKey);
      expect(answer, contains('_key'));
    });

    test('getDocumentByKey can require document revision', () async {
      // first get the doc:
      var answer =
          await testDbClient.getDocumentByKey(testCollection, testDocumentKey);
      // get its revision:
      expect(answer, contains('_rev'));
      // save its revision:
      testDocumentRev = answer['_rev'] as String;

      // now try to get the document with not matched revision:
      var emptyAnswer = await testDbClient.getDocumentByKey(
          testCollection, testDocumentKey,
          ifNoneMatchRevision: testDocumentRev);

      // because last revision equals ${testDocumentRev}
      // server answer will empty:
      expect(emptyAnswer, equals({}));

      // get document only required revision:
      var answerWithRevision = await testDbClient.getDocumentByKey(
          testCollection, testDocumentKey,
          ifMatchRevision: testDocumentRev);

      expect(answerWithRevision, contains('_rev'));
      expect(answerWithRevision['_rev'], equals(testDocumentRev));

      // try get doc with noexists revision:
      try {
        await testDbClient.getDocumentByKey(testCollection, testDocumentKey,
            ifMatchRevision: 'my_wrong_rev');
        fail('Should have thrown');
      } on DbError catch (result) {
        expect(result.error, equals(true));
        expect(result.code, equals(412));
      }
    });

    test('update document', () async {
      // update document with returnNew:
      var updateAnswer = await testDbClient.updateDocument(
          testCollection, testDocumentKey, {'Hello': 'University'},
          queryParams: {'returnNew': 'true'});

      if (updateAnswer.map['new']['Hello'] != 'University') print(updateAnswer);

      expect(updateAnswer.map['new']['Hello'], 'University');

      // save revision:
      testDocumentRev = updateAnswer.map['_rev'] as String;

      var matchedUpdateAnswer = await testDbClient.updateDocument(
          testCollection, testDocumentKey, {'Hello': 'Underground'},
          ifMatchRevision: testDocumentRev);

      // document was updated:
      expect(matchedUpdateAnswer.oldRev, equals(testDocumentRev));

      // try to update not matched revision:
      try {
        await testDbClient.updateDocument(testCollection, testDocumentKey,
            {'Bad trying': 'because bad revision'},
            ifMatchRevision: 'my_bad_rev');
        fail('Should have thrown');
      } on DbError catch (result) {
        expect(result.error, equals(true));
        expect(result.code, equals(412));
      }

      // we will get error in answer:
    });

    test('replace document', () async {
      // replace document with returnNew:
      var replaceAnswer = await testDbClient.replaceDocument(
          testCollection, testDocumentKey, {'Goodby': 'Moon'},
          queryParams: {'returnNew': 'true'});

      if (replaceAnswer.map['new']['Goodby'] != 'Moon') print(replaceAnswer);

      expect(replaceAnswer.map['new']['Goodby'], 'Moon');

      // save revision:
      testDocumentRev = replaceAnswer.map['_rev'] as String;

      var matchedReplaceAnswer = await testDbClient.replaceDocument(
          testCollection, testDocumentKey, {'Hello': 'Undeground'},
          ifMatchRevision: testDocumentRev);

      // document was updated:
      expect(matchedReplaceAnswer.oldRev, equals(testDocumentRev));

      try {
        // try to update not matched revision:
        await testDbClient.replaceDocument(testCollection, testDocumentKey,
            {'Bad trying': 'because bad revision'},
            ifMatchRevision: 'my_bad_rev');

        fail('Should have thrown');
      } on DbError catch (result) {
        expect(result.error, equals(true));
        expect(result.code, equals(412));
      }
      // we will get error in answer:
    });

    test('replace multiple documents', () async {
      var replaceAnswer = await testDbClient.replaceDocuments(testCollection, [
        {'_key': testDocumentKey, 'Good evening': 'Jupiter'}
      ], queryParams: {
        'returnNew': 'true'
      });

      if (replaceAnswer[0].map['new']['_key'] != testDocumentKey) {
        print(replaceAnswer);
      }

      expect(replaceAnswer[0].map['new']['_key'], testDocumentKey);
    });

    test('basic query', () async {
      final d =
          await testDbClient.createDocument(testCollection, {'name': 'Alice'});
      try {
        final results = await testDbClient
            .newQuery()
            .addLine(
                'for c in $testCollection filter c.name == "Alice" return c')
            .runAndReturnFutureList();

        expect(results.length, 1);
        expect(results.first['name'], 'Alice');
      } finally {
        await testDbClient.removeDocument(testCollection, d.identifier.key);
      }
    });

    test('basic query with bound var', () async {
      final d1 =
          await testDbClient.createDocument(testCollection, {'name': 'Alice'});
      final d2 =
          await testDbClient.createDocument(testCollection, {'name': 'Bob'});
      try {
        final results = await testDbClient
            .newQuery()
            .addLine('for c in $testCollection filter c.name == @name return c')
            .addBindVar('name', 'Bob')
            .runAndReturnFutureList();

        expect(results.length, 1);
        expect(results.first['name'], 'Bob');
      } finally {
        await testDbClient.removeDocument(testCollection, d1.identifier.key);
        await testDbClient.removeDocument(testCollection, d2.identifier.key);
      }
    });

    test('basic query with bound var', () async {
      final d1 =
          await testDbClient.createDocument(testCollection, {'name': 'Alice'});
      final d2 =
          await testDbClient.createDocument(testCollection, {'name': 'Bob'});
      try {
        final results = await testDbClient
            .newQuery()
            .addLine(
                'for c in $testCollection filter @name == null || c.name == @name return c')
            .addBindVar('name', null)
            .runAndReturnFutureList();

        expect(results.length, 3);
      } finally {
        await testDbClient.removeDocument(testCollection, d1.identifier.key);
        await testDbClient.removeDocument(testCollection, d2.identifier.key);
      }
    });

    test('remove document', () async {
      var answer = await testDbClient.removeDocument(
          testCollection, testDocumentKey,
          queryParams: {'returnOld': 'true'});

      expect(answer.map,
          allOf(contains('_id'), contains('_key'), contains('_rev')));

      if (!answer.map.containsKey('old')) print(answer);

      if (answer.map['old']['Good evening'] != 'Jupiter') print(answer);

      expect(answer.map['old']['Good evening'], 'Jupiter');

      // After this test document with `testDocumentKey` should be deleted.
    });

    test('create multiple documents', () async {
      var answer = await testDbClient.createDocuments(testCollection, [
        {'Hello': 'Earth'},
        {'Hello': 'Venus'}
      ]);
      // 2 documents was inserted:
      expect((answer).length, equals(2));
      // about first document:
      expect(answer[0].map,
          allOf(contains('_id'), contains('_key'), contains('_rev')));

      // save documents keys for later tests:
      for (var doc in answer) {
        testMultipleDocumentsKeys.add(doc.identifier.key);
      }
    });

    test('remove multiple documents', () async {
      var answer = await testDbClient.removeDocuments(testCollection, [
        // data should contain list of map with _key or _id attributes
        // for each document to remove
        {
          '_key': testMultipleDocumentsKeys[0],
        },
        {
          '_key': testMultipleDocumentsKeys[1],
        },
      ]);

      // print('----------> ${answer}');
      expect((answer).length, equals(2));

      // first of removed documents has the same key as in request body:
      expect((answer)[0].map['_key'], equals(testMultipleDocumentsKeys[0]));
    });

    test('create and abort transaction', () async {
      var transaction =
          await testDbClient.beginTransaction(TransactionOptions());
      final abortAnswer = await testDbClient.abortTransaction(transaction);
      expect(transaction.id, isNotEmpty);
      expect(transaction.state, TransactionStates.running);
      expect(abortAnswer.state, TransactionStates.aborted);
    });

    test('create and commit transaction', () async {
      var transaction =
          await testDbClient.beginTransaction(TransactionOptions());
      final commitAnswer = await testDbClient.commitTransaction(transaction);
      expect(transaction.id, isNotEmpty);
      expect(transaction.state, TransactionStates.running);
      expect(commitAnswer.state, TransactionStates.committed);
    });

    test('create document and rollback', () async {
      final countResult = await testDbClient.documentsCount(testCollection);
      final count = countResult.collectionInfo.count ?? 0;

      var transaction = await testDbClient.beginTransaction(TransactionOptions(
        writeCollections: [testCollection],
        waitForSync: true,
        allowImplicit: true,
      ));

      await testDbClient.createDocument(
        testCollection,
        {'Hello': 'World TRX'},
        transaction: transaction,
      );

      final beforeCount = (await testDbClient.documentsCount(
            testCollection,
            transaction: transaction,
          ))
              .collectionInfo
              .count ??
          0;

      final extraCount = (await testDbClient.documentsCount(
            testCollection,
          ))
              .collectionInfo
              .count ??
          0;

      await testDbClient.abortTransaction(transaction);

      final abortCount = (await testDbClient.documentsCount(testCollection))
              .collectionInfo
              .count ??
          0;

      expect(beforeCount, count + 1);
      expect(extraCount, count);

      expect(abortCount, count);
    });

    test('create document and commit', () async {
      final countResult = await testDbClient.documentsCount(testCollection);
      final count = countResult.collectionInfo.count ?? 0;

      var transaction = await testDbClient.beginTransaction(TransactionOptions(
        writeCollections: [testCollection],
        waitForSync: true,
        allowImplicit: true,
      ));

      await testDbClient.createDocument(
        testCollection,
        {'Hello': 'World TRX'},
        transaction: transaction,
      );

      final preCommitCount = (await testDbClient.documentsCount(testCollection))
              .collectionInfo
              .count ??
          0;

      final trxCount = (await testDbClient.documentsCount(
            testCollection,
            transaction: transaction,
          ))
              .collectionInfo
              .count ??
          0;

      final results = await testDbClient.queryToList(
        {
          // See alse client.queryToStream().
          'query': '''
    FOR doc IN test_temp_collection
    RETURN doc
    ''',
        },
        transaction: transaction,
      );
      final resultCount = results.length;

      await testDbClient.commitTransaction(transaction);

      final commitCount = (await testDbClient.documentsCount(testCollection))
              .collectionInfo
              .count ??
          0;

      expect(commitCount, count + 1);
      expect(trxCount, count + 1);
      expect(resultCount, count + 1);
      expect(preCommitCount, count);
    });

    test('delete document and abort', () async {
      final doc = await testDbClient.createDocument(
        testCollection,
        {'Hello': 'World For Delete and Abort'},
      );

      final key = doc.identifier.key;

      final countResult = await testDbClient.documentsCount(testCollection);
      final count = countResult.collectionInfo.count ?? 0;

      var transaction = await testDbClient.beginTransaction(TransactionOptions(
        writeCollections: [testCollection],
        waitForSync: true,
        allowImplicit: true,
      ));

      await testDbClient.removeDocument(
        testCollection,
        key,
        transaction: transaction,
      );

      await testDbClient.abortTransaction(transaction);

      final afterCount = (await testDbClient.documentsCount(testCollection))
              .collectionInfo
              .count ??
          0;

      expect(afterCount, count);
    });

    test('delete document and commit', () async {
      final doc = await testDbClient.createDocument(
        testCollection,
        {'Hello': 'World For Delete and Commit'},
      );

      final key = doc.identifier.key;

      final countResult = await testDbClient.documentsCount(testCollection);
      final count = countResult.collectionInfo.count ?? 0;

      var transaction = await testDbClient.beginTransaction(TransactionOptions(
        writeCollections: [testCollection],
        waitForSync: true,
        allowImplicit: true,
      ));

      await testDbClient.removeDocument(
        testCollection,
        key,
        transaction: transaction,
      );

      await testDbClient.commitTransaction(transaction);

      final afterCount = (await testDbClient.documentsCount(testCollection))
              .collectionInfo
              .count ??
          0;

      expect(afterCount, count - 1);
    });

    var testDbClientWithConnectionString = DbClient(
        scheme: sch,
        host: h,
        port: p,
        db: testDb,
        user: u,
        pass: ps,
        realm: realm);

    test('get collection info from connection created with connectionstring',
        () async {
      var answer =
          await testDbClientWithConnectionString.collectionInfo(testCollection);
      expect(answer.name, testCollection);
    });

    test('create collection disallowing user keys', () async {
      const testCollectionNoUKs = 'test_temp_collection_no_uks';

      var allCollectionsAnsw = await testDbClient.allCollections();
      var alreadyExists =
          allCollectionsAnsw.any((coll) => coll.name == testCollectionNoUKs);
      if (alreadyExists) {
        print('Skip creating collection $testCollection because it is exists');
        return;
      }
      var answer = await testDbClient.createCollection(CollectionCriteria(
        testCollectionNoUKs,
        keyOptions: CollectionKeyOptions(
          allowUserKeys: false,
          increment: 1,
          type: KeyTypes.autoincrement,
          offset: 0,
        ),
      ));

      await testDbClient.createDocument(testCollectionNoUKs, {'name': 'first'});

      expect(
        () async {
          await testDbClient.createDocument(
              testCollectionNoUKs, {'_key': 'mykey', 'name': 'something'});
        },
        throwsA(TypeMatcher<DbError>().having(
          (f) => f.errorNum,
          'Duplicate error code',
          1222,
        )),
      );

      final cnt = await testDbClient.documentsCount(testCollectionNoUKs);

      expect(answer.collectionInfo.name, testCollectionNoUKs);
      expect(cnt.collectionInfo.count, 1);
    });

    test('create collection with uuid key', () async {
      const testCollectionUuidKey = 'test_temp_collection_uuid';

      var allCollectionsAnsw = await testDbClient.allCollections();
      var alreadyExists =
          allCollectionsAnsw.any((coll) => coll.name == testCollectionUuidKey);
      if (alreadyExists) {
        print('Skip creating collection $testCollection because it is exists');
        return;
      }
      await testDbClient.createCollection(CollectionCriteria(
        testCollectionUuidKey,
        keyOptions: CollectionKeyOptions(
          type: KeyTypes.uuid,
        ),
      ));

      final doc = await testDbClient
          .createDocument(testCollectionUuidKey, {'name': 'first'});
      final key = doc.map['_key'];

      expect(Uuid.isValidUUID(fromString: key), true);
    });

    test('create collection with autoincrement key', () async {
      const testCollectionAutoIncrement = 'test_temp_collection_autoincrement';

      var allCollectionsAnsw = await testDbClient.allCollections();
      var alreadyExists = allCollectionsAnsw
          .any((coll) => coll.name == testCollectionAutoIncrement);
      if (alreadyExists) {
        print('Skip creating collection $testCollection because it is exists');
        return;
      }
      await testDbClient.createCollection(CollectionCriteria(
        testCollectionAutoIncrement,
        keyOptions: CollectionKeyOptions(
            type: KeyTypes.autoincrement, offset: 0, increment: 1),
      ));

      final doc1 = await testDbClient
          .createDocument(testCollectionAutoIncrement, {'name': 'first'});
      final doc2 = await testDbClient
          .createDocument(testCollectionAutoIncrement, {'name': 'second'});
      final key1 = doc1.map['_key'];
      final key2 = doc2.map['_key'];

      expect(key1, '1');
      expect(key2, '2');
    });
    test('create collection with offset autoincrement key', () async {
      const testCollectionAutoIncrement = 'test_temp_collection_offset';

      var allCollectionsAnsw = await testDbClient.allCollections();
      var alreadyExists = allCollectionsAnsw
          .any((coll) => coll.name == testCollectionAutoIncrement);
      if (alreadyExists) {
        print('Skip creating collection $testCollection because it is exists');
        return;
      }
      await testDbClient.createCollection(CollectionCriteria(
        testCollectionAutoIncrement,
        keyOptions: CollectionKeyOptions(
            type: KeyTypes.autoincrement, offset: 2, increment: 3),
      ));

      final doc1 = await testDbClient
          .createDocument(testCollectionAutoIncrement, {'name': 'first'});
      final doc2 = await testDbClient
          .createDocument(testCollectionAutoIncrement, {'name': 'second'});
      final key1 = doc1.map['_key'];
      final key2 = doc2.map['_key'];

      expect(key1, '2');
      expect(key2, '5');
    });

    test('create collection with padded key', () async {
      const testCollectionAutoIncrement = 'test_temp_collection_padded';

      var allCollectionsAnsw = await testDbClient.allCollections();
      var alreadyExists = allCollectionsAnsw
          .any((coll) => coll.name == testCollectionAutoIncrement);
      if (alreadyExists) {
        print('Skip creating collection $testCollection because it is exists');
        return;
      }
      await testDbClient.createCollection(CollectionCriteria(
        testCollectionAutoIncrement,
        keyOptions: CollectionKeyOptions(type: KeyTypes.padded),
      ));

      final doc = await testDbClient
          .createDocument(testCollectionAutoIncrement, {'name': 'first'});
      final key = doc.map['_key'];

      expect(key.length, 16);
    });

    test('drop collection', () async {
      await testDbClient.dropCollection(testCollection);
    });

    // back to _system db
    test('drop test database', () async {
      var answer = await clientSystemDb.dropDatabase(testDb);
      expect(answer, equals(true));
    });
  });
}
