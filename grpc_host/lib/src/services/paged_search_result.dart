@Deprecated('''This class is being discontinued.
The purpose is to refocus this package on the single task
of hosting gRPC services instead of including classes to 
help implement the actual services, especcially classes
that are related to data persistency.
''')
class PagedSearchResult<TEntity> {
  final int count;
  final List<TEntity> page;

  PagedSearchResult({
    required this.count,
    required this.page,
  });
}
