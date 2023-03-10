import 'dart:async';

import 'package:meta/meta.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

abstract class Synchronizer {
  Synchronizer({
    required Database localDatabase,
    required Map<String, SyncTypeHandler> typeHandlers,
  }) : uploadSynchronizer = UploadSynchronizer(
          localDatabase: localDatabase,
          typeHandlers: typeHandlers,
        ) {
    downloadSynchronizer = DownloadSynchronizer(
      localDatabase: localDatabase,
      typeHandlers: typeHandlers,
      getLatestServerChangeId: getLatestServerChangeId,
      getServerPendingChanges: getServerPendingChanges,
    );
  }

  final UploadSynchronizer uploadSynchronizer;
  late final DownloadSynchronizer downloadSynchronizer;

  @protected
  Future<String?> getLatestServerChangeId();

  @protected
  Future<Stream<ServerChange>?> getServerPendingChanges(String? lastChangeId);

  Future<void> sync({SynchronizationContext? context}) async {
    await _sync(context: context);
  }

  Future<void> fullResync({SynchronizationContext? context}) async {
    await _sync(context: context, fullResync: true);
  }

  Future<void> _sync({
    SynchronizationContext? context,
    bool fullResync = false,
  }) async {
    await uploadSynchronizer.syncLocalChanges(context: context);
    await downloadSynchronizer.syncServerChanges(
      context: context,
      fullResync: fullResync,
    );
  }
}
