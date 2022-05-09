import 'package:arango_driver/arango_driver.dart';

class CollectionCriteria {
  final String name;
  final bool waitForSync;
  final CollectionType collectionType;
  final CollectionKeyOptions? keyOptions;

  const CollectionCriteria(
    this.name, {
    this.waitForSync = false,
    this.collectionType = CollectionType.document,
    this.keyOptions,
  });

  const CollectionCriteria.namedArgs({
    required this.name,
    this.waitForSync = false,
    this.collectionType = CollectionType.document,
    this.keyOptions,
  });
}
