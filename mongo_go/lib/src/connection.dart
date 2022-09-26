// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/extensions.dart';

import 'package:mongo_go/src/mongo_proxy.dart' as p;

import 'proto.dart';

class ConnectionSettings {
  final String connectionString;
  ConnectionSettings({
    required this.connectionString,
  });
}

class Connection {
  @Deprecated(
      'There is no further need to call this, as any call to connect will automatically initialize.')
  static void initialize() {
    p.initialize();
  }

  @internal
  final ObjectId connectionId;

  @internal
  Connection({
    required this.connectionId,
  });

  Future<Database> database(String name) async {
    final request = DatabaseRequest(
        connectionOid: connectionId.toByteList(), databaseName: name);
    final oid = await p.database(request);
    final ret = Database(connection: this, databaseId: oid);
    return ret;
  }

  static Future<Connection> connect(ConnectionSettings settings) async {
    p.initialize();
    final oid = await p.connect(settings.toConnectionRequest());
    final connection = Connection(connectionId: oid);
    return connection;
  }

  static Future<Connection> connectWithString(String connectionString) async {
    final settings = ConnectionSettings(connectionString: connectionString);
    return await connect(settings);
  }

  Future<Session> startSession() async {
    final sessionOid = await p.startSession(
        StartSessionRequest(connectionOid: connectionId.toByteList()));
    return Session(
      sessionId: sessionOid,
      connection: this,
    );
  }

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

  Future<void> dispose() async {
    await p.disconnect(connectionId);
  }
}
