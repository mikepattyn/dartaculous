abstract class SyncEntityService<TEntity> {
  Future<TEntity> get(String id);
  Future<TEntity> create(TEntity entity);
  Future<TEntity> update(TEntity entity);
  Future<void> delete(String id, String rev);
  Future<Stream<TEntity>> getAll();
}
