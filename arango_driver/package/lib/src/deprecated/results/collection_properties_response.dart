import 'collection_response.dart';
import '../../results/key_options.dart';

class CollectionPropertiesResponse extends CollectionResponse {
  final int writeConcern;
  final bool waitForSync;
  final String? tempObjectId;
  final bool cacheEnabled;
  final bool isSmartChild;
  final String objectId;
  final String? schema;
  final KeyOptions keyOptions;
  final bool? isDisjoint;
  final String statusString;

  const CollectionPropertiesResponse({
    required super.result,
    required super.collectionInfo,
    required this.writeConcern,
    required this.waitForSync,
    this.tempObjectId,
    required this.cacheEnabled,
    required this.isSmartChild,
    required this.objectId,
    this.schema,
    required this.keyOptions,
    required this.isDisjoint,
    required this.statusString,
  });
}
