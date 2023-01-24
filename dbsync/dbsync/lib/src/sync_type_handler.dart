import 'package:dbsync/dbsync.dart';

abstract class SyncTypeHandler<TEntity> {
  SyncEntityService<TEntity> get entityService;
  LocalEntityRepository<TEntity> get localEntityRepository;
  LocalChangeEntity toLocalChangeEntity(TEntity entity);
  TEntity fromLocalChangeEntity(LocalChangeEntity entity);
}
