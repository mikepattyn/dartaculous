import 'package:arango_driver/arango_driver.dart';

class CollectionPropertiesResult {
  final int writeConcern;
  final bool waitForSync;
  final String? tempObjectId;
  final bool cacheEnabled;
  final bool isSmartChild;
  final String? objectId;
  final String? schema;
  final KeyOptions keyOptions;
  final bool? isDisjoint;
  final String statusString;
  final CollectionInfo collectionInfo;

  const CollectionPropertiesResult({
    required this.collectionInfo,
    required this.writeConcern,
    required this.waitForSync,
    this.tempObjectId,
    required this.cacheEnabled,
    required this.isSmartChild,
    this.objectId,
    this.schema,
    required this.keyOptions,
    required this.isDisjoint,
    required this.statusString,
  });
}
