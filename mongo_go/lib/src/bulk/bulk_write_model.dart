import '../proto.dart' as p;

/// Interface implemented by models that can be used in a BulkWrite operation.
/// Each WriteModel represents a write.
///
/// This interface is implemented by [InsertOneModel], [DeleteOneModel],
/// [DeleteManyModel], [ReplaceOneModel], [UpdateOneModel], and
/// [UpdateManyModel].
///
/// Custom implementations of this interface must not be used.
abstract class BulkWriteModel {
  p.WriteModel toProto();
}
