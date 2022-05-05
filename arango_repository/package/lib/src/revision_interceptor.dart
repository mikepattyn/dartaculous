import 'package:arangodb_repository/arangodb_repository.dart';
import 'package:nosql_repository/nosql_repository.dart';

@Deprecated('This class will be removed in a later version')
abstract class IRevisionDateMapper {
  dynamic mapDate(DateTime revisionDate);
}

@Deprecated('This class will be removed in a later version')
mixin RevisionInterceptor<TEntity> on TenantFilteredArangoDbRepository<TEntity>
    implements IRevisionDateMapper {
  @override
  Map<String, dynamic> getOrCreateMetaForCreate(
    Map<String, dynamic> map,
    DbPrincipal principal,
  ) {
    final meta = super.getOrCreateMetaForCreate(map, principal);
    addRevision(meta, principal);
    return meta;
  }

  @override
  Map<String, dynamic> getOrCreateMetaForUpdate(
    Map<String, dynamic> oldMap,
    Map<String, dynamic> newMap,
    DbPrincipal principal,
  ) {
    final meta = super.getOrCreateMetaForUpdate(oldMap, newMap, principal);
    addRevision(meta, principal);
    return meta;
  }

  void addRevision(Map<String, dynamic> meta, DbPrincipal principal) {
    var revisions = meta['revisions'] =
        (List<Map<String, dynamic>>.from(meta['revisions'] ?? []));
    revisions.add(_createRevision(principal));
  }

  Map<String, dynamic> _createRevision(DbPrincipal principal) {
    return {
      'userKey': principal.userKey,
      'revisionDate': mapDate(DateTime.now().toUtc()),
    };
  }
}
