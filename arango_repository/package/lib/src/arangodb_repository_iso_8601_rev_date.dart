import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';

@Deprecated('This class will be removed in a later version')
class ArangoDbRepositoryIso8601RevDate<TEntity>
    extends TenantFilteredArangoDbRepository<TEntity>
    with RevisionInterceptor<TEntity> {
  ArangoDbRepositoryIso8601RevDate(super.db, super.collectionName);

  @override
  mapDate(DateTime revisionDate) {
    return revisionDate.toIso8601String();
  }
}
