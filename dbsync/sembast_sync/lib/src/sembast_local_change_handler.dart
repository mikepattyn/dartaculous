import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

class SembastLocalChangeHandler implements LocalChangeHandler {
  final Database database;
  final changeStore = intMapStoreFactory.store('local_changes');
  final syncStateStore = intMapStoreFactory.store('sync_state');

  SembastLocalChangeHandler(
    this.database,
  );

  @override
  Future<void> clearAllLocalChanges(Context ctx) async {
    final executor = _getExecutor(ctx);

    changeStore.delete(executor);
  }

  @override
  Future<void> deleteLocalChange(
      Context context, LocalChange localChange) async {
    final executor = _getExecutor(context);
    await changeStore.record(localChange.id).delete(executor);
  }

  @override
  Future<String?> getLastReceivedChangeId() async {
    final executor = _getExecutor();

    final r = await syncStateStore.record(1).get(executor);
    final lrci = r?['lastReceivedChangeId'] as String?;
    return lrci;
  }

  @override
  Future<List<LocalChange>> getLocalChanges() async {
    final executor = _getExecutor();
    final records = await changeStore.find(executor);
    final lcs = records.map((e) {
      return e.value.toLocalChange();
    }).toList();
    return lcs;
  }

  @override
  Future<void> insertLocalChange(Context context, LocalChange change) async {
    final executor = _getExecutor(context);

    await changeStore.delete(executor,
        finder: Finder(
            filter: Filter.and([
          Filter.equals('entityId', change.entityId),
          Filter.equals('entityRev', change.entityRev)
        ])));

    if (change.id == 0) {
      final id = await changeStore.generateIntKey(executor);
      change = change.copyWith(id: id);
    }

    await changeStore.record(change.id).add(executor, change.toMap());
  }

  @override
  Future<void> setLastReceivedChangeId(Context ctx, String? id) async {
    final executor = _getExecutor(ctx);
    await syncStateStore.record(1).put(executor, {'lastReceivedChangeId': ''});
  }

  @override
  Future<void> transaction(
      Future<void> Function(Context context) action) async {
    await database.transaction(
      (txn) async {
        final ctx = TransactionContext(txn);
        await action(ctx);
      },
    );
  }

  DatabaseClient _getExecutor([Context? context]) {
    if (context is TransactionContext) return context.transaction;
    return database;
  }
}
