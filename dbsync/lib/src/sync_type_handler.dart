import 'dart:async';
import 'dart:typed_data';

import 'package:sqflite_common/sqlite_api.dart';

abstract class SyncTypeHandler<TEntity> {
  String getId(TEntity entity);
  String getRev(TEntity entity);

  Future<TEntity> getLocal(DatabaseExecutor executor, String id);
  FutureOr<void> clearAllLocal(DatabaseExecutor executor);
  Future<void> upsertLocal(DatabaseExecutor executor, TEntity entity);
  Future<void> deleteLocal(DatabaseExecutor executor, String id);

  Future<TEntity> getRemote(String id);
  Future<Stream<TEntity>> getAllRemote();
  Future<TEntity> createRemote(TEntity entity);
  Future<TEntity> updateRemote(TEntity entity);
  Future<void> deleteRemote(String id, String rev);

  TEntity unmarshal(Uint8List entityBytes);
  Uint8List marshal(TEntity entity);
}
