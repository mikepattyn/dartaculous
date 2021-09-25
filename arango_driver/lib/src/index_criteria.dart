class IndexCriteria {
  final String collectionName;
  final String indexName;
  final Iterable<String> fieldNames;
  final bool unique;
  final bool deduplicate;
  final bool sparse;
  final bool inBackground;

  const IndexCriteria(
    this.collectionName,
    this.indexName,
    this.fieldNames, [
    this.unique = false,
    this.deduplicate = false,
    this.sparse = false,
    this.inBackground = false,
  ]);

  const IndexCriteria.namedArgs({
    required this.collectionName,
    required this.indexName,
    required this.fieldNames,
    this.unique = false,
    this.deduplicate = false,
    this.sparse = false,
    this.inBackground = false,
  });
}
