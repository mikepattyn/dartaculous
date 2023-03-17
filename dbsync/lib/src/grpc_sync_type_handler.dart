import 'package:dbsync/dbsync.dart';
import 'package:grpc/grpc.dart';

mixin GrpcSyncTypeHandler<TEntity> on SyncTypeHandler<TEntity> {
  Future<Stream<TEntity>> grpcGetAllRemote();
  Future<TEntity> grpcGetRemote(String id);
  Future<TEntity> grpcCreateRemote(TEntity entity);
  Future<TEntity> grpcUpdateRemote(TEntity entity);
  Future<void> grpcDeleteRemote(String id, String rev);

  @override
  Future<TEntity> getRemote(String id) async {
    try {
      final e = await grpcGetRemote(id);
      return e;
    } on GrpcError catch (ex) {
      if (ex.code == StatusCode.unavailable) {
        throw UnavailableException(innerException: ex);
      }
      rethrow;
    }
  }

  @override
  Future<Stream<TEntity>> getAllRemote() async {
    try {
      final str = await grpcGetAllRemote();
      return str;
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        throw UnavailableException(innerException: exception);
      }
      rethrow;
    }
  }

  @override
  Future<TEntity> createRemote(TEntity entity) async {
    try {
      final created = await grpcCreateRemote(entity);
      return created;
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        throw UnavailableException(innerException: exception);
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.alreadyExists) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }

  @override
  Future<TEntity> updateRemote(TEntity entity) async {
    try {
      final updated = await grpcUpdateRemote(entity);
      return updated;
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        throw UnavailableException(innerException: exception);
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.alreadyExists ||
          exception.code == StatusCode.notFound) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }

  @override
  Future<void> deleteRemote(String id, String rev) async {
    try {
      await grpcDeleteRemote(id, rev);
    } on GrpcError catch (exception) {
      if (exception.code == StatusCode.unavailable) {
        throw UnavailableException(innerException: exception);
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.notFound) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }
}
