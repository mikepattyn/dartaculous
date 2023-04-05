import 'dart:async';

import 'package:dbsync/dbsync.dart';
import 'package:logging/logging.dart';

final _logger = Logger('dbsync:DownloadSynchronizer');

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
    _logger.finest('Entered DownloadSynchronizer.sync method');
    final lastChangeId = await localDatabase.getLastReceivedChangeId();

    if (lastChangeId == null) {
      _logger.finest('... no lastChangeId, so will do full resync');
      await fullResync(context: context);
      return;
    }
    _logger.finest('... will sync from $lastChangeId');
    final changes =
        (await getServerPendingChanges(lastChangeId))?.asBroadcastStream();
    if (changes == null) {
      _logger.finest('... got no changes, so will do full resync');
      await fullResync(context: context);
    } else {
      _logger.finest('... got changes, will do _partialSyncServerChanges');
      await _partialSyncServerChanges(changes, context: context);
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
              if (lst.length >= handler.upsertBatchSize) {
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
              final lst = (upsertBatch[handler] ??= []);
              lst.add(entity);
              if (lst.length >= handler.upsertBatchSize) {
                _logger.finest(
                    '... reached upsert batch size. Will call handler.upsertLocalBatch');
                await handler.upsertLocalBatch(ctx, lst);
                lst.clear();
                _logger.finest('... done upserting');
              }
              //await handler.upsertLocal(ctx, entity);
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
    }
  }

  Future<void> fullResync({SynchronizationContext? context}) async {
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
            if (items.length >= handler.upsertBatchSize) {
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
        await localDatabase.setLastReceivedChangeId(ctx, lastSyncedChangeId);
      });
    } on CancelException catch (_) {
      _logger.finest('user cancelled sync');
      rethrow;
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
}
