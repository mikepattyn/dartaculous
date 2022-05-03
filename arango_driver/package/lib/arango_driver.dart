/// Provides a driver to connect to ArangoDb and perform data manipulation
/// and queries.
library arango_driver;

export 'src/db_client_query.dart';
export 'src/collection_criteria.dart';
export 'src/collection_type.dart';
export 'src/create_database_info.dart';
export 'src/database_user.dart';
export 'src/db_client.dart';
export 'src/index_criteria.dart';
export 'src/ttl_index_criteria.dart';
export 'src/index_type.dart';
export 'src/query.dart';
export 'src/db_query_with_client.dart';
export 'src/results/collection_info.dart';
export 'src/results/collection_properties_result.dart';
export 'src/results/db_info_result.dart';
export 'src/results/identifier.dart';
export 'src/results/index_info.dart';
export 'src/results/key_options.dart';
export 'src/results/document_operation_result.dart';
export 'src/results/db_error.dart';
export 'src/transactions/transaction.dart';
export 'src/transactions/transaction_options.dart';
export 'src/transactions/transaction_states.dart';
export 'src/deprecated/deprecated.dart';
