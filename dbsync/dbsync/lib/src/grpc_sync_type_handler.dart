import 'package:dbsync/dbsync.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

mixin GrpcSyncTypeHandler<TEntity> on SyncTypeHandler<TEntity> {
  Future<Stream<TEntity>> grpcGetAllRemote();
  Future<TEntity?> grpcGetRemote(String id);
  Future<TEntity> grpcCreateRemote(TEntity entity);
  Future<TEntity> grpcUpdateRemote(TEntity entity);
  Future<void> grpcDeleteRemote(TEntity entity);

  @override
  Future<TEntity?> getRemote(String id) async {
    try {
      final e = await grpcGetRemote(id);
      return e;
    } on GrpcError catch (ex) {
      if (isUnavailable(ex)) {
        throw UnavailableException(innerException: ex);
      }
      if (isNotFound(ex)) {
        throw NotFoundException(innerException: ex);
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
      if (isUnavailable(exception)) {
        throw UnavailableException(innerException: exception);
      }
      if (isNotFound(exception)) {
        throw NotFoundException(innerException: exception);
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
      if (isUnavailable(exception)) {
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
      if (isUnavailable(exception)) {
        throw UnavailableException(innerException: exception);
      }
      if (isNotFound(exception)) {
        throw NotFoundException(innerException: exception);
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
  Future<void> deleteRemote(TEntity entity) async {
    try {
      await grpcDeleteRemote(entity);
    } on GrpcError catch (exception) {
      if (isUnavailable(exception)) {
        throw UnavailableException(innerException: exception);
      }
      if (isNotFound(exception)) {
        throw NotFoundException(innerException: exception);
      }
      if (exception.code == StatusCode.aborted ||
          exception.code == StatusCode.notFound) {
        throw ConflictException(innerException: exception);
      }
      rethrow;
    }
  }

  @protected
  bool isUnavailable(GrpcError exception) {
    return exception.code == StatusCode.unavailable;
  }

  @protected
  bool isNotFound(GrpcError exception) {
    return exception.code == StatusCode.notFound;
  }
}
