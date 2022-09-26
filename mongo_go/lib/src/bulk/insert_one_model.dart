import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';

class InsertOneModel extends BulkWriteModel {
  final Map<String, dynamic> document;
  InsertOneModel({
    required this.document,
  });

  @override
  @internal
  p.WriteModel toProto() {
    final bson = BSON();
    final bytes = bson.serialize(document).byteList;

    return p.WriteModel(insertOneModel: p.InsertOneModel(document: bytes));
  }
}
