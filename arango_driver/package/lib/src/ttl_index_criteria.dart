class TtlIndexCriteria {
  final String collectionName;
  final String indexName;
  final Iterable<String> fieldNames;
  final int expireAfter;
  final bool inBackground;

  const TtlIndexCriteria(
    this.collectionName,
    this.indexName,
    this.fieldNames,
    this.expireAfter, [
    this.inBackground = false,
  ]);

  const TtlIndexCriteria.namedArgs({
    required this.collectionName,
    required this.indexName,
    required this.fieldNames,
    required this.expireAfter,
    this.inBackground = false,
  });
}
