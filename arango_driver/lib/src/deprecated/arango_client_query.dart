// ignore_for_file: deprecated_member_use_from_same_package

import 'arango_db_client.dart';
import 'query_with_client.dart';

/// Adds the newQuery method to the ArangoDBClient class.
@Deprecated('Deprecated alongside with ArangoDBClient')
extension ArangoClientQuery on ArangoDBClient {
  /// Creates new [QueryWithClient] (with saved link to client) object
  /// for continue to constructing it later.
  QueryWithClient newQuery() {
    return QueryWithClient(this, []);
  }
}
