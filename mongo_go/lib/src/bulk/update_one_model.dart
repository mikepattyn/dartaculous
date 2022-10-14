import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';
import '../extensions.dart';

/// UpdateOneModel is used to update at most one document in a BulkWrite
/// operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#UpdateOneModel.
class UpdateOneModel extends BulkWriteModel {
  bool? isUpsert;
  final Map<String, dynamic> update;
  final Map<String, dynamic>? filter;
  final Map<String, dynamic>? hint;
  UpdateOneModel({
    this.isUpsert,
    required this.update,
    this.filter,
    this.hint,
  });

  @override
  @internal
  p.WriteModel toProto() {
    final bson = BSON();

    final updateBytes = bson.serialize(update).byteList;
    final filterBytes = filter == null ? null : bson.serialize(filter).byteList;
    final hintBytes = hint == null ? null : bson.serialize(hint).byteList;

    return p.WriteModel(
      updateOneModel: p.UpdateOneModel(
        upsert: isUpsert.toWrapped(),
        filter: filterBytes,
        hint: hintBytes,
        update: updateBytes,
      ),
    );
  }
}
