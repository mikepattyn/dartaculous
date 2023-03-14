import 'package:dbsync/dbsync.dart';
import 'package:grpc/grpc.dart';

mixin GrpcSync<TEntity> on SyncEntityRepository<TEntity> {
  @override
  Future<TEntity?> getRemote(String id) async {
    try {
      final e = await syncHandler.getRemote(id);
      return e;
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        return null;
      }
      rethrow;
    }
  }

  @override
  Future<TEntity?> createRemote(TEntity entity) async {
    try {
      final created = await super.createRemote(entity);
      return created;
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        return null;
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.alreadyExists) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }

  @override
  Future<TEntity?> updateRemote(TEntity entity) async {
    try {
      final updated = await super.updateRemote(entity);
      return updated;
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        return null;
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.alreadyExists) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }

  @override
  Future<bool> deleteRemote(String id, String rev) async {
    try {
      return await super.deleteRemote(id, rev);
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        return false;
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.alreadyExists) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }
}
