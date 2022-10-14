// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/extensions.dart';

import 'package:mongo_go/src/mongo_go.dart' as p;

import 'proto.dart';

/// Represents options available to connect to the database.
/// This is the primary parameter of the [Connection] constructor.
class ConnectionSettings {
  /// Connection URI containing options for the connection.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#ClientOptions.ApplyURI.
  final String connectionString;

  /// Specifies whether or not a direct connect should be made.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#ClientOptions.SetDirect.
  final bool? direct;
  ConnectionSettings({
    required this.connectionString,
    this.direct,
  });
}

/// Represents a connected client to a database server.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver/mongo#Client.Connect.
class Connection {
  @Deprecated(
      'There is no further need to call this, as any call to connect will automatically initialize.')
  static void initialize() {
    p.initialize();
  }

  /// For internal use of the package.
  @internal
  final ObjectId connectionId;

  Connection._({
    required this.connectionId,
  });

  /// Obtains a reference to a [Database] of the given name.
  Future<Database> database(String name) async {
    final request = DatabaseRequest(
        connectionOid: connectionId.toByteList(), databaseName: name);
    final oid = await p.database(request);
    final ret = Database(connection: this, databaseId: oid);
    return ret;
  }

  /// Connects to a MongoDB server.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Connect.
  static Future<Connection> connect(ConnectionSettings settings) async {
    p.initialize();
    final oid = await p.connect(settings.toConnectionRequest());
    final connection = Connection._(connectionId: oid);
    return connection;
  }

  /// Connects to a MongoDB server.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Connect.
  static Future<Connection> connectWithString(
    /// Connection URI containing options for the connection.
    ///
    /// ## Reference
    /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#ClientOptions.ApplyURI.
    String connectionString, {

    /// Specifies whether or not a direct connect should be made.
    ///
    /// ## Reference
    /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#ClientOptions.SetDirect.
    bool? direct,
  }) async {
    p.initialize();
    final settings = ConnectionSettings(
      connectionString: connectionString,
      direct: direct,
    );
    return await connect(settings);
  }

  /// Starts a new session and returns an object that represents that session.
  ///
  /// ## Dispose
  /// Session has a dispose method that should always be called when the intended
  /// work to be performed is complete. Ideally, the dispose method should be
  /// called inside a ```finally``` block.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Client.StartSession.
  Future<Session> startSession() async {
    final sessionOid = await p.startSession(
        StartSessionRequest(connectionOid: connectionId.toByteList()));
    return Session(
      sessionId: sessionOid,
      connection: this,
    );
  }

  /// Does work, represented by the [work] parameter inside a transaction.
  ///
  /// This method creates a new session and within that session, it
  /// creates a new transaction. It performs the work given to
  /// it within the context of that transaction.
  ///
  /// If the work throws an exception, the transaction is aborted and
  /// the exception is rethrown (i.e. ultimately it is not handled, so
  /// the caller is able to handle it or otherwise keep propagating).
  ///
  /// If the work does not throw an exception, the transaction is committed.
  ///
  /// The session and the transaction created internally by this
  /// method are automatically disposed, so the caller does not need to worry
  /// about disposing those.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Session.WithTransaction.
  Future<TResult> withTransaction<TResult>(
    Future<TResult> Function(Transaction transaction) work,
  ) async {
    final session = await startSession();
    try {
      final r = await session.withTransaction(work);
      return r;
    } finally {
      session.dispose();
    }
  }

  /// Disconnects the connection to the MongoDB server.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Client.Disconnect.
  Future<void> dispose() async {
    await p.disconnect(connectionId);
  }
}
