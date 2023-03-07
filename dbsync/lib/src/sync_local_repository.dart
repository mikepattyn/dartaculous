import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

abstract class SyncLocalRepository {
  Future<List<LocalChange>> getLocalChanges(DatabaseExecutor executor);
  FutureOr<void> deleteLocalChange(DatabaseExecutor executor, int id);
  FutureOr<void> clearAll(DatabaseExecutor executor);
  Future<String?> getLastReceivedChange(DatabaseExecutor executor);
  Future<void> setLastReceivedChange(DatabaseExecutor executor, String? id);

  FutureOr<void> insertChange(
      DatabaseExecutor executor, LocalChange localChange);
}
