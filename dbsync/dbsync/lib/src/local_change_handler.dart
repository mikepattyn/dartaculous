import 'package:dbsync/dbsync.dart';

abstract class LocalChangeHandler {
  Future<List<LocalChange>> getLocalChanges();
  Future<void> insertLocalChange(Context context, LocalChange localChange);
  Future<void> deleteLocalChange(Context context, LocalChange localChange);
  Future<void> transaction(Future<void> Function(Context context) action);
  Future<void> clearAllLocalChanges(Context ctx);
  Future<String?> getLastReceivedChangeId();
  Future<void> setLastReceivedChangeId(Context ctx, String? id);
}
