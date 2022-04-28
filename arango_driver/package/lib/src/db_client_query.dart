import 'package:arango_driver/arango_driver.dart';


/// Adds the newQuery method to the ArangoDBClient class.
// ignore: deprecated_member_use_from_same_package
extension DbClientQuery on DbClient {
  /// Creates new [DbQueryWithClient] (with saved link to client) object
  /// for continue to constructing it later.
  DbQueryWithClient newQuery() {
    return DbQueryWithClient(this, []);
  }
}

