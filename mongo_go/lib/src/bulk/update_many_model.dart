import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';
import '../extensions.dart';

/// UpdateManyModel is used to update multiple documents in a BulkWrite
/// operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#UpdateManyModel.
class UpdateManyModel extends BulkWriteModel {
  bool? isUpsert;
  final Map<String, dynamic> update;
  final Map<String, dynamic>? filter;
  final Map<String, dynamic>? hint;
  UpdateManyModel({
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
      updateManyModel: p.UpdateManyModel(
        upsert: isUpsert.toWrapped(),
        filter: filterBytes,
        hint: hintBytes,
        update: updateBytes,
      ),
    );
  }
}
