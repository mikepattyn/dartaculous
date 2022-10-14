// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';
import 'package:mongo_go/src/proto.dart' as p;

/// Represents an error returned by this driver.
///
/// Instances of this class and its sub-classes
/// will be returned to represent failure of
/// operations performed by this driver.
///
/// The following sub-classes are thrown
/// to represent specific types of errors:
/// - [MongoNoDocumentsError] when no document is found and one is required for
///   the operation.
/// - [MongoDuplicateKeyError] when an attempt is made to insert a document
///   in violation of the _id key or an unique index.
/// - [MongoNetworkError] when there is a network error.
/// - [MongoTimeoutError] when an attempt to complete an operation times out.
///
/// Other cases will be represented by an instance of this class.
class MongoError {
  final String message;
  MongoError({
    required this.message,
  });

  @internal
  factory MongoError.fromProto(p.MongoError pError) {
    final msg = pError.message;
    switch (pError.errorType) {
      case p.ErrorType.no_documents:
        return MongoNoDocumentsError(message: msg);
      case p.ErrorType.duplicate_key:
        return MongoDuplicateKeyError(message: msg);
      case p.ErrorType.network:
        return MongoNetworkError(message: msg);
      case p.ErrorType.timeout:
        return MongoTimeoutError(message: msg);
      default:
        return MongoError(message: msg);
    }
  }
}

/// A timeout occurred when trying to complete an operation.
class MongoTimeoutError extends MongoError {
  MongoTimeoutError({required super.message});
}

/// an attempt is made to insert a document in violation of the
/// _id key or an unique index
class MongoDuplicateKeyError extends MongoError {
  MongoDuplicateKeyError({required super.message});
}

/// There was a network error.
class MongoNetworkError extends MongoError {
  MongoNetworkError({required super.message});
}

/// No document was found and one was required for the operation
class MongoNoDocumentsError extends MongoError {
  MongoNoDocumentsError({required super.message});
}
