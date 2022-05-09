//import 'package:model/model.dart';
import 'package:nosql_repository/nosql_repository.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';

class EntityServicesParameters<TEntity> {
  final Repository<TEntity> repository;

  final MapMapper<TEntity> mapMapper;
  final EntityPermissions permissions;
  final Validator validator;

  EntityServicesParameters({
    required this.repository,
    required this.mapMapper,
    required this.permissions,
    required this.validator,
  });

  EntityServicesParameters.fromEntityAdapter(
    this.repository,
    EntityAdapter<TEntity> adapter,
  )   : mapMapper = adapter.mapMapper,
        permissions = adapter.permissions,
        validator = adapter.validator;
}
