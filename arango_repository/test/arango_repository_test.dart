import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';
import 'package:nosql_repository/src/repository.dart';
import 'package:nosql_repository_tests/nosql_repository_tests.dart';

import 'test_conf.dart';

void main() {
  repositoryTests(ArangoRepositoryTestHandler());
}

class ArangoRepositoryTestHandler extends RepositoryTestHandler {
  @override
  Future<Repository<Recipe>> createRepositoryForCleanCollection() async {
    final testDbClient = await _connectTestDb();
    await _ensureEmptyTestCollection(testDbClient, 'recipes');
    final repository =
        ArangoDbRepositoryIso8601RevDate<Recipe>(testDbClient, 'recipes');
    return repository;
  }

  @override
  String getIdFromMap(Map<String, dynamic> map, [String? fieldName]) {
    fieldName ??= '_key';
    fieldName = mapKeyFieldName(fieldName);
    return map[fieldName];
  }

  @override
  Map<String, dynamic> toIdMap(String key) {
    return {'_key': key};
  }

  @override
  String mapKeyFieldName(String keyFieldName) => keyFieldName;
}

Future _ensureEmptyTestCollection(
    DbClient testDbClient, String testCollection) async {
  var allCollectionsAnsw = await testDbClient.allCollections();
  var alreadyExists =
      allCollectionsAnsw.any((coll) => coll.name == testCollection);
  if (!alreadyExists) {
    await testDbClient.createCollection(CollectionCriteria(testCollection));
  }
  await testDbClient.truncateCollection(testCollection);
}

Future<DbClient> _connectTestDb() async {
  const systemDb = '_system';
  const testDb = 'test_temp_db';
  var clientSystemDb = _connectArangoDb(systemDb);
  var databases = await clientSystemDb.existingDatabases();
  // skip test if test database already exists
  if (!databases.contains(testDb)) {
    await clientSystemDb
        .createDatabase(CreateDatabaseInfo(testDb, [DatabaseUser('u', 'ps')]));
  }
  final testDbClient = _connectArangoDb(testDb);

  return testDbClient;
}

DbClient _connectArangoDb(String db) {
  var client = DbClient(
    scheme: dbscheme,
    host: dbhost,
    port: dbport,
    db: db,
    user: dbuser,
    pass: dbpass,
  );
  return client;
}
