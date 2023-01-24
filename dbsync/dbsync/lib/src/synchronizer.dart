import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';
import 'package:synced_data/synced_data.dart';

abstract class Synchronizer {
  Synchronizer({
    required this.database,
    required this.localChangeRepository,
    required this.changeClient,
    required this.typeHandlers,
  }) {
    isSynchronizingStream =
        _isSynchronizingController.stream.asBroadcastStream();
  }

  bool isConflictException(Object exception);

  final Database database;
  final SyncLocalRepository localChangeRepository;
  final SyncChangeClient changeClient;
  final _isSynchronizingController = StreamController<bool>();
  late final Stream<bool> isSynchronizingStream;

  bool _isSynchronizing = false;

  bool get isSynchronizing => _isSynchronizing;

  final Map<String, SyncTypeHandler> typeHandlers;

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
    if (_isSynchronizing) return;
    if (context != null) {
      context.conflicts.clear();
      context.cancel = false;
    }
    _isSynchronizingController.add(_isSynchronizing = true);
    try {
      await _syncLocalChanges(context: context);
      await _syncServerChanges(
        context: context,
        fullResync: fullResync,
      );
    } finally {
      _isSynchronizingController.add(_isSynchronizing = false);
    }
  }

  Future<void> _syncServerChanges({
    SynchronizationContext? context,
    bool fullResync = false,
  }) async {
    final lastChangeId =
        await localChangeRepository.getLastReceivedChange(database);

    if (lastChangeId == null || fullResync) {
      await _fullSyncServerChanges(context: context);
      return;
    }

    final changes = (await changeClient.getPendingChanges(lastChangeId))
        ?.asBroadcastStream();
    if (changes == null) {
      await _fullSyncServerChanges(context: context);
    } else {
      await _partialSyncServerChanges(changes, context: context);
    }
  }

  Future<void> _partialSyncServerChanges(
    Stream<SyncChange> changes, {
    SynchronizationContext? context,
  }) async {
    SyncChange? lastChange;
    database.transaction((txn) async {
      await for (final change in changes) {
        if (context?.cancel ?? false) {
          return;
        }
        lastChange = change;
        final handler = _getTypeHandlerByTypeName(change.entityType);
        if (change is SyncDeleteChange) {
          await handler.localEntityRepository.deleteLocal(txn, change.id);
        } else if (change is SyncUpsertChange) {
          await handler.localEntityRepository.upsertLocal(txn, change.entity);
        } else {
          throw UnsupportedError('Type of change not supported.');
        }
      }
      if (lastChange != null) {
        await localChangeRepository.setLastReceivedChange(txn, lastChange!.id);
      }
    });
  }

  Future<void> _fullSyncServerChanges({SynchronizationContext? context}) async {
    final lastSyncedChangeId = await changeClient.getLatestChangeId();

    await database.transaction((transaction) async {
      await localChangeRepository.clearAll(transaction);
      for (final handler in typeHandlers.values) {
        if (context?.cancel ?? false) {
          return;
        }
        await handler.localEntityRepository.clearAll(transaction);
        final stream = await handler.entityService.getAll();
        await for (final item in stream) {
          if (context?.cancel ?? false) {
            return;
          }
          await handler.localEntityRepository.upsertLocal(transaction, item);
        }
      }
      await localChangeRepository.setLastReceivedChange(
          transaction, lastSyncedChangeId);
    });
  }

  /// synchronizes all local changes to the server
  /// Returns a list of local changes that were discarded
  /// because of optimistic conflict
  Future<void> _syncLocalChanges({
    SynchronizationContext? context,
  }) async {
    final localChanges = await localChangeRepository.getLocalChanges(database);

    for (final localChange in localChanges) {
      if (context?.cancel ?? false) {
        break;
      }
      final handler = _getTypeHandlerByTypeName(localChange.entityType);
      await database.transaction((txn) async {
        await localChangeRepository.deleteLocalChange(txn, localChange.id);
        try {
          await _doOperation(localChange, handler);
        } catch (ex) {
          if (!isConflictException(ex)) {
            rethrow;
          }
          if (context != null) {
            context.conflicts.add(localChange);
          }
        }
      });
    }
  }

  Future<void> _doOperation(
      LocalChange localChange, SyncTypeHandler<dynamic> handler) async {
    switch (localChange.operation) {
      case ChangeOperation.create:
        final entity = handler.fromLocalChangeEntity(localChange.entity);
        await handler.entityService.create(entity);
        break;
      case ChangeOperation.update:
        final entity = handler.fromLocalChangeEntity(localChange.entity);
        await handler.entityService.update(entity);
        break;
      case ChangeOperation.delete:
        final id = localChange.entity.id;
        final rev = localChange.entity.rev;
        await handler.entityService.delete(id, rev);
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
}
