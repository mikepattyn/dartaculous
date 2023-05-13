import 'dart:async';
import 'package:dbsync/dbsync.dart';

class UploadSynchronizer {
  UploadSynchronizer({
    required this.localDatabase,
    required this.typeHandlers,
  });

  final LocalChangeHandler localDatabase;
  final Map<String, SyncTypeHandler> typeHandlers;

  /// synchronizes all local changes to the server
  /// Returns a list of local changes that were discarded
  /// because of optimistic conflict
  Future<void> syncLocalChanges({
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
}
