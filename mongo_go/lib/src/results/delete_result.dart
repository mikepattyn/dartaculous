import 'package:meta/meta.dart';

import '../proto.dart' as p;

class DeleteResult {
  final int deletedCount;

  DeleteResult({
    required this.deletedCount,
  });

  @internal
  factory DeleteResult.fromProto(p.DeleteResult pResult) {
    final ret = DeleteResult(
      deletedCount: pResult.deletedCount.toInt(),
    );
    return ret;
  }
}
