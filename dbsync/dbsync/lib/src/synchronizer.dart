import 'dart:async';

import 'package:meta/meta.dart';
import 'package:dbsync/dbsync.dart';

abstract class Synchronizer<TSerialized> {
  Synchronizer({
    required LocalChangeHandler localDatabase,
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
    await uploadSynchronizer.syncLocalChanges(context: context);
    await downloadSynchronizer.sync(context: context);
  }

  Future<void> fullResync({SynchronizationContext? context}) async {
    await uploadSynchronizer.syncLocalChanges(context: context);
    await downloadSynchronizer.fullResync(context: context);
  }
}
