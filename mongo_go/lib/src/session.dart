// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/mongo_go.dart' as p;
import 'proto.dart';

class Session {
  final ObjectId sessionId;
  final Connection connection;

  @internal
  Session({
    required this.connection,
    required this.sessionId,
  });

  Future<Transaction> startTransaction() async {
    final transactionId = await p.withTransaction(WithTransactionRequest(
      connectionOid: connection.connectionId.toByteList(),
      sessionOid: sessionId.toByteList(),
    ));

    final transaction =
        Transaction(session: this, transactionId: transactionId);
    return transaction;
  }

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

  Future<void> dispose() async {
    await p.closeSession(CloseSessionRequest(
      connectionOid: connection.connectionId.toByteList(),
      sessionOid: sessionId.toByteList(),
    ));
  }
}
