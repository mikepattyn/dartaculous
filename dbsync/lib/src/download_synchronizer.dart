import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

typedef GetIdFunc = Future<String?> Function();
typedef GetPendingChangesFunc = Future<Stream<ServerChange>?> Function(
    String? lastChangeId);

class DownloadSynchronizer {
  DownloadSynchronizer({
    required this.localDatabase,
    required this.typeHandlers,
    required this.getLatestServerChangeId,
    required this.getServerPendingChanges,
  });

  final Database localDatabase;

  final Map<String, SyncTypeHandler> typeHandlers;

  /// Gets the Id of the latest available change from the server.
  GetIdFunc getLatestServerChangeId;

  /// Gets the pending changes from the server, starting
  /// with lastChangeId.
  /// Will return an empty stream if no changes are available,
  /// but lastChangeId still exists in the change log.
  /// Will return null if lastChangeId has expired and removed from the
  /// change log.
  GetPendingChangesFunc getServerPendingChanges;


  Future<void> sync({SynchronizationContext? context}) async {
    final lastChangeId = await _getLatestReceivedChangeId(localDatabase);

    if (lastChangeId == null) {
      await fullResync(context: context);
      return;
    }

    final changes =
        (await getServerPendingChanges(lastChangeId))?.asBroadcastStream();
    if (changes == null) {
      await fullResync(context: context);
    } else {
      await _partialSyncServerChanges(changes, context: context);
    }
  }




  FutureOr<void> _clearAllLocalPendingChanges(DatabaseExecutor executor) async {
    await SyncLocalRepository.clearAll(executor);
  }

  Future<String?> _getLatestReceivedChangeId(DatabaseExecutor executor) async {
    final s = await SyncLocalRepository.getLastReceivedChangeId(executor);
    return s;
  }

  Future<void> _setLastReceivedChangeId(
      DatabaseExecutor executor, String? id) async {
    await SyncLocalRepository.setLastReceivedChange(executor, id);
  }

  Future<void> _partialSyncServerChanges(
    Stream<ServerChange> changes, {
    SynchronizationContext? context,
  }) async {
    ServerChange? lastChange;
    localDatabase.transaction((txn) async {
      await for (final change in changes) {
        if (context?.cancel ?? false) {
          return;
        }
        lastChange = change;
        final handler = _getTypeHandlerByTypeName(change.entityType);
        switch (change.changeOperation) {
          case ChangeOperation.delete:
            await handler.deleteLocal(txn, change.changedId);
            break;
          case ChangeOperation.create:
          case ChangeOperation.update:
            final entity = await handler.unmarshal(change.entity);
            await handler.upsertLocal(txn, entity);
            break;
          default:
            throw UnsupportedError('Type of change not supported.');
        }
      }
      if (lastChange != null) {
        await _setLastReceivedChangeId(txn, lastChange!.id);
      }
    });
  }

  Future<void> fullResync({SynchronizationContext? context}) async {
    final lastSyncedChangeId = await getLatestServerChangeId();

    await localDatabase.transaction((transaction) async {
      await _clearAllLocalPendingChanges(transaction);
      for (final handler in typeHandlers.values) {
        if (context?.cancel ?? false) {
          return;
        }
        await handler.clearAllLocal(transaction);
        final stream = await handler.getAllRemote();
        await for (final item in stream) {
          if (context?.cancel ?? false) {
            return;
          }
          await handler.upsertLocal(transaction, item);
        }
      }
      await _setLastReceivedChangeId(transaction, lastSyncedChangeId);
    });
  }

  SyncTypeHandler _getTypeHandlerByTypeName(String typeName) {
    final handler = typeHandlers[typeName];
    if (handler == null) {
      throw ArgumentError(
          "There is no handler registered for the entity's type", 'entity');
    }
    return handler;
  }
}
