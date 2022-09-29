// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bson/bson.dart';
import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'package:mongo_go/src/extensions.dart';
import 'package:mongo_go/src/mongo_go.dart' as p;
import 'proto.dart';

class Transaction {
  final ObjectId transactionId;
  final Session session;
  final RequestContext requestContext;
  bool _isComplete = false;

  @internal
  Transaction({
    required this.transactionId,
    required this.session,
  }) : requestContext = RequestContext(
          withTransaction: TransactionIdentifier(
            sessionOid: session.sessionId.toByteList(),
            transactionId: transactionId.toByteList(),
          ),
        );

  Future<void> commit() async {
    _isComplete = true;
    await p.endTransaction(
      EndTransactionRequest(
        connectionOid: session.connection.connectionId.toByteList(),
        errorMessage: null,
        sessionOid: session.sessionId.toByteList(),
        transactionOid: transactionId.toByteList(),
      ),
    );
  }

  Future<void> abort({String? errorMessage}) async {
    _isComplete = true;
    await p.endTransaction(
      EndTransactionRequest(
        connectionOid: session.connection.connectionId.toByteList(),
        errorMessage: errorMessage ?? 'abort',
        sessionOid: session.sessionId.toByteList(),
        transactionOid: transactionId.toByteList(),
      ),
    );
  }

  Future<void> dispose() async {
    if (_isComplete) {
      return;
    }
    await abort();
  }
}
