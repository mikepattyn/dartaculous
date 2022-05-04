import 'package:nosql_repository/nosql_repository.dart';

const _transactionDeprecationMessage =
    'Use the database driver to create a transaction and wrap in inside a subclass of RepositoryTransaction. Do not use this class any longer.';

@Deprecated(_transactionDeprecationMessage)
class RepositoryTransactionOptions {
  final List<Repository> readRepositories;
  final List<Repository> writeRepositories;
  final List<Repository> exclusiveRepositories;

  const RepositoryTransactionOptions({
    this.readRepositories = const [],
    this.writeRepositories = const [],
    this.exclusiveRepositories = const [],
  });
}
