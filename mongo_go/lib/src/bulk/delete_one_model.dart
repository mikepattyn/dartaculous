import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';

class DeleteOneModel extends BulkWriteModel {
  final Map<String, dynamic>? filter;
  final Map<String, dynamic>? hint;
  DeleteOneModel({
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
        deleteOneModel: p.DeleteOneModel(
      filter: filterBytes,
      hint: hintBytes,
    ));
  }
}
