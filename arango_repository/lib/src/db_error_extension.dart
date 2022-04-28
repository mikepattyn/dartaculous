import 'package:arango_driver/arango_driver.dart';
import 'package:nosql_repository/nosql_repository.dart';

extension DbErrorExtension on DbError {
  DbException toDbException() {
    return DbException(
      message: errorMessage,
      code: code.toString(),
      number: errorNum.toString(),
    );
  }

  void throwDbException() {
    throw toDbException();
  }
}
