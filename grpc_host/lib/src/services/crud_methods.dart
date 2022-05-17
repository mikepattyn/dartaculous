import 'package:grpc_host/services.dart';
import 'package:nosql_repository/nosql_repository.dart';
import 'package:squarealfa_security/squarealfa_security.dart';

@Deprecated('''This class is being discontinued.
The purpose is to refocus this package on the single task
of hosting gRPC services instead of including classes to 
help implement the actual services, especcially classes
that are related to data persistency.
''')
mixin CrudMethods<TEntity extends Object> on EntityServicesBase<TEntity> {
  Future<TEntity> create(
    TEntity entity, {
    RepositoryTransaction? transaction,
  }) async {
    validator.validateThrowing(entity);
    var map = mapMapper.toMap(entity);
    map = await repository.create(map, principal, transaction: transaction);

    entity = mapMapper.fromMap(map);
    return entity;
  }

  Future<TEntity> deleteByKeyValue(
    String keyValue, {
    RepositoryTransaction? transaction,
  }) async {
    final map = await repository.delete(
      keyValue,
      principal,
      transaction: transaction,
    );
    final entity = mapMapper.fromMap(map);
    return entity;
  }

  Future<TEntity> getByKeyValue(
    String keyValue, {
    RepositoryTransaction? transaction,
  }) async {
    var map = await repository.get(
      keyValue,
      principal,
      transaction: transaction,
    );
    var entity = mapMapper.fromMap(map);

    return entity;
  }

  Future<TEntity> update(
    TEntity entity, {
    RepositoryTransaction? transaction,
  }) async {
    validator.validateThrowing(entity);

    var map = mapMapper.toMap(entity);

    try {
      map = await repository.update(
        map,
        principal,
        transaction: transaction,
      );
    } on NotFound {
      throwNotFound();
    } on Unauthorized {
      throwUnauthorized();
    }
    entity = mapMapper.fromMap(map);

    return entity;
  }
}
