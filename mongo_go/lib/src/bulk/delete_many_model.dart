import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';

/// DeleteManyModel is used to delete multiple documents in a BulkWrite
/// operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#DeleteManyModel.
class DeleteManyModel extends BulkWriteModel {
  final Map<String, dynamic>? filter;
  final Map<String, dynamic>? hint;
  DeleteManyModel({
    this.filter,
    this.hint,
  });

  @override
  @internal
  p.WriteModel toProto() {
    final bson = BSON();

    final filterBytes = filter == null ? null : bson.serialize(filter).byteList;
    final hintBytes = hint == null ? null : bson.serialize(hint).byteList;

    return p.WriteModel(
        deleteManyModel: p.DeleteManyModel(
      filter: filterBytes,
      hint: hintBytes,
    ));
  }
}
