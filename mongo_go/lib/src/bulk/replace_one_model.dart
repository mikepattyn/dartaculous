import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';
import '../extensions.dart';

/// ReplaceOneModel is used to replace at most one document in a BulkWrite
/// operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#ReplaceOneModel.
class ReplaceOneModel extends BulkWriteModel {
  bool? isUpsert;
  final Map<String, dynamic> replacement;
  final Map<String, dynamic>? filter;
  final Map<String, dynamic>? hint;
  ReplaceOneModel({
    this.isUpsert,
    required this.replacement,
    this.filter,
    this.hint,
  });

  @override
  @internal
  p.WriteModel toProto() {
    final bson = BSON();

    final replacementBytes = bson.serialize(replacement).byteList;
    final filterBytes = filter == null ? null : bson.serialize(filter).byteList;
    final hintBytes = hint == null ? null : bson.serialize(hint).byteList;

    return p.WriteModel(
      replaceOneModel: p.ReplaceOneModel(
        upsert: isUpsert.toWrapped(),
        filter: filterBytes,
        hint: hintBytes,
        replacement: replacementBytes,
      ),
    );
  }
}
