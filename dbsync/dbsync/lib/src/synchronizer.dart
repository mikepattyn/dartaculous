import 'dart:async';

import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:dbsync/dbsync.dart';

final _logger = Logger('dbsync:Synchronizer');

abstract class Synchronizer<TSerialized> {
  Synchronizer({
    required this.localDatabase,
    required this.typeHandlers,
  });

  // {
  //   downloadSynchronizer = DownloadSynchronizer(
  //     localDatabase: localDatabase,
  //     typeHandlers: typeHandlers,
  //     getLatestServerChangeId: getLatestServerChangeId,
  //     getServerPendingChanges: getServerPendingChanges,
  //   );
  // }

  final Map<String, SyncTypeHandler> typeHandlers;
  final LocalChangeHandler localDatabase;

  // late final DownloadSynchronizer downloadSynchronizer;

  /// Gets the Id of the latest available change from the server.
  @protected
  Future<String?> getLatestServerChangeId();

  /// Gets the pending changes from the server, starting
  /// with lastChangeId.
  /// Will return an empty stream if no changes are available,
  /// but lastChangeId still exists in the change log.
  /// Will return null if lastChangeId has expired and removed from the
  /// change log.
  @protected
  Future<Stream<ServerChange>> getServerPendingChanges(String? lastChangeId);

  /// Synchronizes pending local changes to the server and tries
  /// to do sync the pending changes from the server to the app.
  /// When it is not possible to do a consistent synchronization
  /// of the pending  changes from the server, reverts to a
  /// full synchronization from the server.
  Future<void> sync({SynchronizationContext? context}) async {
    await _syncLocalChanges(context: context);
    await _syncServerChanges(context: context);
  }

  /// Synchronizes pending local changes to the server does
  /// full synchronization from the server.
  Future<void> fullResync({SynchronizationContext? context}) async {
    await _syncLocalChanges(context: context);
    await _fullResync(context: context);
  }

  /**********************************
   *      Upload Synchronization    *
   **********************************/

  /// synchronizes all local changes to the server
  /// Returns a list of local changes that were discarded
  /// because of optimistic conflict
  Future<void> _syncLocalChanges({
    SynchronizationContext? context,
  }) async {
    final localChanges = await localDatabase.getLocalChanges();

    for (final localChange in localChanges) {
      if (context?.cancel ?? false) {
        break;
      }
      final handler = _getTypeHandlerByTypeName(localChange.entityType);
      await localDatabase.transaction((txn) async {
        await localDatabase.deleteLocalChange(txn, localChange);
        try {
          await _doOperation(txn, localChange, handler);
        } on ConflictException catch (_) {
          if (context != null) {
            context.conflicts.add(localChange);
          }
        }
      });
    }
  }

  Future<void> _doOperation(Context txn, LocalChange localChange,
      SyncTypeHandler<dynamic> handler) async {
    switch (localChange.operation) {
      case ChangeOperation.create:
        final entity = handler.unmarshal(localChange.protoBytes);
        final updated = await handler.createRemote(entity);
        await handler.upsertLocal(txn, updated);
        break;
      case ChangeOperation.update:
        final entity = handler.unmarshal(localChange.protoBytes);
        final updated = await handler.updateRemote(entity);
        await handler.upsertLocal(txn, updated);
        break;
      case ChangeOperation.delete:
        final id = localChange.entityId;
        final rev = localChange.entityRev;
        await handler.deleteRemote(id, rev);
        break;
    }
  }

  SyncTypeHandler _getTypeHandlerByTypeName(String typeName) {
    final handler = typeHandlers[typeName];
    if (handler == null) {
      throw ArgumentError(
          "There is no handler registered for the entity's type", 'entity');
    }
    return handler;
  }

  /**********************************
   *      Download Synchronization    *
   **********************************/

  /// tries to do a partial synchronization from the server,
  /// but falls back to full synchronization when needed
  Future<void> _syncServerChanges({SynchronizationContext? context}) async {
    _logger.finest('Entered DownloadSynchronizer.sync method');
    final lastChangeId = await localDatabase.getLastReceivedChangeId();

    if (lastChangeId == null) {
      _logger.finest('... no lastChangeId, so will do full resync');
      await _fullResync(context: context);
      return;
    }
    _logger.finest('... will sync from $lastChangeId');
    try {
      final changes = await getServerPendingChanges(
          lastChangeId == '' ? null : lastChangeId);
      await _partialSyncServerChanges(changes, context: context);
    } on NotFoundException catch (_) {
      _logger.finest('...Received a NotFoundException, so doing a fullResync');
      await _fullResync(context: context);
    }
  }

  Future<void> _partialSyncServerChanges(
    Stream<ServerChange> changes, {
    SynchronizationContext? context,
  }) async {
    _logger.finest('Entered _partialSyncServerChanges');
    try {
      await localDatabase.transaction((ctx) async {
        ServerChange? lastChange;
        final deleteBatch = <SyncTypeHandler, List<String>>{};
        final upsertBatch = <SyncTypeHandler, List>{};

        await for (final change in changes) {
          if (context?.cancel ?? false) {
            _logger.finest('... cancel requested. Leaving');
            throw CancelException();
          }
          _logger.finest(
              '... handling change ${change.changedId} of operation ${change.changeOperation} for entity type ${change.entityType}');
          final handler = _getTypeHandlerByTypeName(change.entityType);

          switch (change.changeOperation) {
            case ChangeOperation.delete:
              final lst = (deleteBatch[handler] ??= []);
              lst.add(change.changedId);
              if (handler.deleteBatchSize >= 0 &&
                  lst.length >= handler.upsertBatchSize) {
                _logger.finest(
                    '... reached deleted batch size. Will call handler.deleteLocalBatch');
                await handler.deleteLocalBatch(ctx, lst);
                lst.clear();
                _logger.finest('... done deleting');
              }
              // await handler.deleteLocal(ctx, change.changedId);
              break;
            case ChangeOperation.create:
            case ChangeOperation.update:
              final entity = await handler.unmarshal(change.entity);
              final List lst = (upsertBatch[handler] ??= []);
              lst.add(entity);
              if (handler.upsertBatchSize >= 0 &&
                  lst.length >= handler.upsertBatchSize) {
                _logger.finest(
                    '... reached upsert batch size. Will call handler.upsertLocalBatch');
                await handler.upsertLocalBatch(ctx, lst);
                lst.clear();
                _logger.finest('... done upserting');
              }
              break;
            default:
              throw UnsupportedError('Type of change not supported.');
          }
          lastChange = change;
        }
        _logger.finest('... received all changes.');
        for (final e in deleteBatch.entries
            .where((element) => element.value.isNotEmpty)) {
          _logger.finest(
              '... has pending deletes for handler ${e.key.toString()}. Will deleteLocalBatch.');
          await e.key.deleteLocalBatch(ctx, e.value);
          _logger.finest('... done.');
        }
        for (final e in upsertBatch.entries
            .where((element) => element.value.isNotEmpty)) {
          _logger.finest(
              '... has pending upserts for handler ${e.key.toString()}. Will upsertLocalBatch.');
          await e.key.upsertLocalBatch(ctx, e.value);
          _logger.finest('... done.');
        }
        if (lastChange != null) {
          _logger
              .finest('... will setLastReceivedChangeId to ${lastChange.id}');
          await localDatabase.setLastReceivedChangeId(ctx, lastChange.id);
        }
      });
    } on CancelException catch (_) {
      _logger.finest('user cancelled sync');
      rethrow;
    } catch (ex) {
      _logger.finest('exception on _partialSyncServerChanges: $ex');
      rethrow;
    }
    print('finished _partialSyncServerChanges with no incident');
  }

  Future<void> _fullResync({SynchronizationContext? context}) async {
    _logger.finest('Entered fullResync');
    try {
      await localDatabase.transaction((ctx) async {
        _logger.finest('... will call getLatestServerChangeId');
        final lastSyncedChangeId = await getLatestServerChangeId();
        _logger.finest(
            '... got $lastSyncedChangeId. Will clear all local changes');
        await localDatabase.clearAllLocalChanges(ctx);
        _logger.finest('... will reset last received changedId to null');
        await localDatabase.setLastReceivedChangeId(ctx, null);
        _logger.finest('... will clear all local records');
        for (final handler in typeHandlers.values) {
          _logger.finest(
              '... will clear local records for handler ${handler.toString()}');
          await handler.clearAllLocal(ctx);
        }
        _logger.finest('... will sync each handler');

        for (final handler in typeHandlers.values) {
          _logger.finest(
              '... syncing all items for handler ${handler.toString()}');
          if (context?.cancel ?? false) {
            _logger.finest('... cancel requested. Will leave.');
            throw CancelException();
          }
          final stream = await handler.getAllRemote();
          final items = [];
          await for (final item in stream) {
            if (context?.cancel ?? false) {
              _logger.finest('... cancel requested. Will leave.');
              throw CancelException();
            }

            items.add(item);
            if (handler.upsertBatchSize >= 0 &&
                items.length >= handler.upsertBatchSize) {
              _logger
                  .finest('... reached upsertBatchSize. will upserLocalBatch');
              await handler.upsertLocalBatch(ctx, items);
              items.clear();
            }
          }

          if (items.isNotEmpty) {
            _logger.finest(
                '... received all items. will upserLocalBatch for remaining items.');

            await handler.upsertLocalBatch(ctx, items);
          }

          _logger.finest('... done syncing all items for handler.');
        }
        _logger.finest(
            '... done syncing all handlers will call setLastReceivedChangeId with $lastSyncedChangeId.');
        await localDatabase.setLastReceivedChangeId(
            ctx, lastSyncedChangeId ?? '');
      });
    } on CancelException catch (_) {
      _logger.finest('user cancelled sync');
      rethrow;
    }
  }
}
