import 'dart:async';
import 'dart:typed_data';

import 'package:dbsync/dbsync.dart';

abstract class SyncTypeHandler<TEntity> {
  String getId(TEntity entity);
  String getRev(TEntity entity);

  Future<TEntity> getLocal(String id);
  FutureOr<void> clearAllLocal(Context context);

  Future<void> upsertLocal(Context context, TEntity entity);

  int get upsertBatchSize => 1;
  Future<void> upsertLocalBatch(Context context, List entities);
  Future<void> deleteLocal(Context context, TEntity entity);

  int get deleteBatchSize => 1;
  Future<void> deleteLocalBatch(Context context, List entities);

  Future<TEntity?> getRemote(String id);
  Future<Stream<TEntity>> getAllRemote();
  Future<TEntity> createRemote(TEntity entity);
  Future<TEntity> updateRemote(TEntity entity);
  Future<void> deleteRemote(TEntity entity);

  TEntity unmarshal(Uint8List entityBytes);
  Uint8List marshal(TEntity entity);
}
