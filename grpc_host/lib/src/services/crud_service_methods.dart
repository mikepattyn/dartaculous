import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';
import 'package:nosql_repository/nosql_repository.dart';
import 'package:squarealfa_security/squarealfa_security.dart';

mixin CrudServiceMethods<TEntity extends Object> on EntityServices<TEntity> {
  Future<TEntity> create(
    TEntity entity, {
    RepositoryTransaction? transaction,
  }) async {
    validator.validateThrowing(entity);
    var map = mapMapper.toMap(entity);
    map =
        await repository.create(map, call.principal, transaction: transaction);

    entity = mapMapper.fromMap(map);
    return entity;
  }

  Future deleteByKeyValue(
    String keyValue, {
    RepositoryTransaction? transaction,
  }) async {
    await repository.delete(
      keyValue,
      principal,
      transaction: transaction,
    );
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
      throw GrpcError.notFound();
    } on Unauthorized {
      throwUnauthorized();
    }
    entity = mapMapper.fromMap(map);

    return entity;
  }
}
