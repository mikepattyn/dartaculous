import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

abstract class Synchronizer {
  Synchronizer({
    required this.localDatabase,
    required this.typeHandlers,
  }) {
    isSynchronizingStream =
        _isSynchronizingController.stream.asBroadcastStream();
  }

  Future<List<LocalChange>> getLocalChanges(DatabaseExecutor executor) async {
    final l = await SyncLocalRepository.getLocalChanges(executor);
    return l;
  }

  FutureOr<void> deleteLocalChange(DatabaseExecutor executor, int id) async {
    await SyncLocalRepository.deleteLocalChange(executor, id);
  }

  FutureOr<void> clearAllLocal(DatabaseExecutor executor) async {
    await SyncLocalRepository.clearAll(executor);
  }

  Future<String?> getLastReceivedChangeId(DatabaseExecutor executor) async {
    final s = await SyncLocalRepository.getLastReceivedChangeId(executor);
    return s;
  }

  Future<void> setLastReceivedChangeId(
      DatabaseExecutor executor, String? id) async {
    await SyncLocalRepository.setLastReceivedChange(executor, id);
  }

  FutureOr<void> insertLocalChange(
      DatabaseExecutor executor, LocalChange localChange) async {
    await SyncLocalRepository.insertChange(executor, localChange);
  }

  Future<String?> getLatestServerChangeId();

  /// Gets the pending changes from the server, starting
  /// with lastChangeId.
  /// Will return an empty stream if no changes are available,
  /// but lastChangeId still exists in the change log.
  /// Will return null if lastChangeId has expired and removed from the
  /// change log.
  Future<Stream<ServerChange>?> getServerPendingChanges(String? lastChangeId);

  final Database localDatabase;
  // final SyncLocalRepository localChangeRepository;
  // final SyncChangeClient changeClient;
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
    final lastChangeId = await getLastReceivedChangeId(localDatabase);

    if (lastChangeId == null || fullResync) {
      await _fullSyncServerChanges(context: context);
      return;
    }

    final changes =
        (await getServerPendingChanges(lastChangeId))?.asBroadcastStream();
    if (changes == null) {
      await _fullSyncServerChanges(context: context);
    } else {
      await _partialSyncServerChanges(changes, context: context);
    }
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
        await setLastReceivedChangeId(txn, lastChange!.id);
      }
    });
  }

  Future<void> _fullSyncServerChanges({SynchronizationContext? context}) async {
    final lastSyncedChangeId = await getLatestServerChangeId();

    await localDatabase.transaction((transaction) async {
      await clearAllLocal(transaction);
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
      await setLastReceivedChangeId(transaction, lastSyncedChangeId);
    });
  }

  /// synchronizes all local changes to the server
  /// Returns a list of local changes that were discarded
  /// because of optimistic conflict
  Future<void> _syncLocalChanges({
    SynchronizationContext? context,
  }) async {
    final localChanges = await getLocalChanges(localDatabase);

    for (final localChange in localChanges) {
      if (context?.cancel ?? false) {
        break;
      }
      final handler = _getTypeHandlerByTypeName(localChange.entityType);
      await localDatabase.transaction((txn) async {
        await deleteLocalChange(txn, localChange.id);
        try {
          await _doOperation(localChange, handler);
        } on ConflictException catch (ex) {
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
        final entity = handler.unmarshal(localChange.protoBytes);
        await handler.createRemote(entity);
        break;
      case ChangeOperation.update:
        final entity = handler.unmarshal(localChange.protoBytes);
        await handler.updateRemote(entity);
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
}
