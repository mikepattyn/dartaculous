import 'package:synced_data/synced_data.dart';

abstract class SyncChangeClient {
  Future<String?> getLatestChangeId();

  /// Gets the pending changes from the server, starting
  /// with lastChangeId.
  /// Will return an empty stream if no changes are available,
  /// but lastChangeId still exists in the change log.
  /// Will return null if lastChangeId has expired and removed from the
  /// change log.
  Future<Stream<SyncChange>?> getPendingChanges(String? lastChangeId);
}
