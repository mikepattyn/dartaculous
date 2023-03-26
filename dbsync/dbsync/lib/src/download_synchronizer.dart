import 'dart:async';

// import 'package:sqflite_common/sqlite_api.dart';
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

  final LocalChangeHandler localDatabase;

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
    final lastChangeId = await localDatabase.getLastReceivedChangeId();

    if (lastChangeId == null) {
      print('#### WILL DO A FULL RESYNC');
      await fullResync(context: context);
      print('#### DONE FULL RESYNC');
      return;

    }
    print('#### WILL GET CHANGES FOR PARTIAL RESYNC');
    final changes =
        (await getServerPendingChanges(lastChangeId))?.asBroadcastStream();
    print('#### GOT CHANGES FOR PARTIAL RESYNC');
    if (changes == null) {
      print('#### NULL CHANGES - WILL FULL RESYNC');
      await fullResync(context: context);
      print('#### NULL CHANGES - FULL RESYNC DONE');
    } else {
      print('#### HAS CHANGES - WILL PARTIAL RESYNC');
      await _partialSyncServerChanges(changes, context: context);
      print('#### HAS CHANGES - PARTIAL RESYNC DONE');
    }
  }

  // FutureOr<void> _clearAllLocalPendingChanges(Context context) async {
  //   localDatabase.clearAllLocalChanges(context);
  //   //await SyncLocalRepository.clearAll(executor);
  // }

  // Future<String?> _getLatestReceivedChangeId(Context context) async {
  //   //final s = await SyncLocalRepository.getLastReceivedChangeId(executor);
  //   final s = await localDatabase.getLastReceivedChangeId(context);
  //   return s;
  // }

  Future<void> _partialSyncServerChanges(
    Stream<ServerChange> changes, {
    SynchronizationContext? context,
  }) async {
    ServerChange? lastChange;
    await localDatabase.transaction((ctx) async {
      await for (final change in changes) {
        if (context?.cancel ?? false) {
          return;
        }
        lastChange = change;
        final handler = _getTypeHandlerByTypeName(change.entityType);
        switch (change.changeOperation) {
          case ChangeOperation.delete:
            await handler.deleteLocal(ctx, change.changedId);
            break;
          case ChangeOperation.create:
          case ChangeOperation.update:
            final entity = await handler.unmarshal(change.entity);
            await handler.upsertLocal(ctx, entity);
            break;
          default:
            throw UnsupportedError('Type of change not supported.');
        }
      }
      if (lastChange != null) {
        await localDatabase.setLastReceivedChangeId(ctx, lastChange!.id);
        //await _setLastReceivedChangeId(txn, lastChange!.id);
      }
    });
  }

  Future<void> fullResync({SynchronizationContext? context}) async {
    final lastSyncedChangeId = await getLatestServerChangeId();

    await localDatabase.transaction((ctx) async {
      await localDatabase.clearAllLocalChanges(ctx);
      for (final handler in typeHandlers.values) {
        if (context?.cancel ?? false) {
          return;
        }
        await handler.clearAllLocal(ctx);
        final stream = await handler.getAllRemote();
        await for (final item in stream) {
          if (context?.cancel ?? false) {
            return;
          }
          await handler.upsertLocal(ctx, item);
        }
      }
      await localDatabase.setLastReceivedChangeId(ctx, lastSyncedChangeId);
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
