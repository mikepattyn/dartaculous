import 'package:grpc_host/grpc_host.dart';
import 'package:grpc_host/services.dart';
import 'package:nosql_repository/nosql_repository.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';
import 'package:squarealfa_security/squarealfa_security.dart';

@Deprecated('''This class is being discontinued.
The purpose is to refocus this package on the single task
of hosting gRPC services instead of including classes to 
help implement the actual services, especcially classes
that are related to data persistency.
''')
class EntityServicesBase<TEntity> {
  final Repository<TEntity> repository;

  final MapMapper<TEntity> mapMapper;
  final EntityPermissions permissions;
  final Validator validator;
  final Principal principal;

  EntityServicesBase(
    this.principal,
    EntityServicesParameters<TEntity> parameters, {
    bool unauthenticated = false,
  })  : repository = parameters.repository,
        validator = parameters.validator,
        permissions = parameters.permissions,
        mapMapper = parameters.mapMapper {
    if (!principal.isAuthenticated && !unauthenticated) throwUnauthorized();
  }

  void throwOnError(ErrorList errors) {
    if (errors.hasErrors) throw errors;
  }

  void throwUnauthorized() {
    throw Unauthorized();
  }

  void throwNotFound() {
    throw NotFound();
  }
}
