import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

class UploadSynchronizer {
  UploadSynchronizer({
    required this.localDatabase,
    required this.typeHandlers,
  });

  final Database localDatabase;
  final Map<String, SyncTypeHandler> typeHandlers;

  Future<List<LocalChange>> _getLocalChanges(DatabaseExecutor executor) async {
    final l = await SyncLocalRepository.getLocalChanges(executor);
    return l;
  }

  FutureOr<void> _deleteLocalChange(DatabaseExecutor executor, int id) async {
    await SyncLocalRepository.deleteLocalChange(executor, id);
  }

  /// synchronizes all local changes to the server
  /// Returns a list of local changes that were discarded
  /// because of optimistic conflict
  Future<void> syncLocalChanges({
    SynchronizationContext? context,
  }) async {
    final localChanges = await _getLocalChanges(localDatabase);

    for (final localChange in localChanges) {
      if (context?.cancel ?? false) {
        break;
      }
      final handler = _getTypeHandlerByTypeName(localChange.entityType);
      await localDatabase.transaction((txn) async {
        await _deleteLocalChange(txn, localChange.id);
        try {
          await _doOperation(localChange, handler);
        } on ConflictException catch (_) {
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
