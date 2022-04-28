import '../../transactions/transaction.dart';
import 'result.dart';

class TransactionResponse {
  final Transaction transaction;
  final Result result;

  const TransactionResponse({
    required this.result,
    required this.transaction,
  });
}
