import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

import '../proto.dart' as p;
import 'bulk_write_model.dart';

/// InsertOneModel is used to insert a single document in a BulkWrite operation.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo#InsertOneModel.
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
