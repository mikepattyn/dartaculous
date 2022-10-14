// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/mongo_go.dart' as p;
import 'proto.dart';

/// Represents a MongoDB logical session. Sessions can be used to enable causal
/// consistency for a group of operations or to execute operations in an
/// ACID transaction. A new Session can be created from a [Connection] instance.
/// A Session created from a [Connection] must only be used to execute
/// operations using that [Connection] or a [Database] or [Collection] created
/// from that [Connection].
///
/// For more information about sessions, and their use cases,
/// see https://www.mongodb.com/docs/manual/reference/server-sessions/,
/// https://www.mongodb.com/docs/manual/core/read-isolation-consistency-recency/#causal-consistency,
/// and https://www.mongodb.com/docs/manual/core/transactions/.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Session.
class Session {
  /// For internal use of this package.
  final ObjectId sessionId;

  /// The connection from which this session was created
  final Connection connection;

  /// For internal use of this package.
  @internal
  Session({
    required this.connection,
    required this.sessionId,
  });

  /// Starts a new transaction, configured with the given options,
  /// on this session. This method will throw an error if there is already a
  /// transaction in-progress for this session.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Session.StartTransaction.
  Future<Transaction> startTransaction() async {
    final transactionId = await p.withTransaction(WithTransactionRequest(
      connectionOid: connection.connectionId.toByteList(),
      sessionOid: sessionId.toByteList(),
    ));

    final transaction =
        Transaction(session: this, transactionId: transactionId);
    return transaction;
  }

  /// Does work, represented by the [work] parameter inside a transaction.
  ///
  /// This method creates a new transaction in this session. It performs the
  /// work given to it within the context of that transaction.
  ///
  /// If the work throws an exception, the transaction is aborted and
  /// the exception is rethrown (i.e. ultimately it is not handled, so
  /// the caller is able to handle it or otherwise keep propagating).
  ///
  /// If the work does not throw an exception, the transaction is committed.
  ///
  /// The transaction created internally by this method is automatically
  /// disposed, so the caller does not need to worry about disposing it.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Session.WithTransaction.

  Future<TResult> withTransaction<TResult>(
      Future<TResult> Function(Transaction transaction) work) async {
    final transaction = await startTransaction();
    try {
      final result = await work(transaction);
      await transaction.commit();
      return result;
    } catch (ex) {
      await transaction.abort(errorMessage: ex.toString());
      rethrow;
    } finally {
      await transaction.dispose();
    }
  }

  /// Closes this session.
  ///
  /// ## Reference
  /// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#Session.EndSession.
  Future<void> dispose() async {
    await p.closeSession(CloseSessionRequest(
      connectionOid: connection.connectionId.toByteList(),
      sessionOid: sessionId.toByteList(),
    ));
  }
}
