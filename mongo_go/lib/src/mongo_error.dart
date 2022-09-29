// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';
import 'package:mongo_go/src/proto.dart' as p;

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

class MongoTimeoutError extends MongoError {
  MongoTimeoutError({required super.message});
}

class MongoDuplicateKeyError extends MongoError {
  MongoDuplicateKeyError({required super.message});
}

class MongoNetworkError extends MongoError {
  MongoNetworkError({required super.message});
}

class MongoNoDocumentsError extends MongoError {
  MongoNoDocumentsError({required super.message});
}
