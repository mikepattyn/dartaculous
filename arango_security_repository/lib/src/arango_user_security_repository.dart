import 'package:arango_driver/arango_driver.dart';
import 'package:nosql_repository/nosql_repository.dart';
import 'package:security_repository/security_repository.dart';

class ArangoUserSecurityRepository implements UserSecurityRepository {
  final ArangoDBClient _dbClient;

  ArangoUserSecurityRepository(ArangoDBClient dbClient) : _dbClient = dbClient;

  @override
  Future<UserPermissionSet> getUserPermissionSet(String userKey) async {
    var query = '''
        let user = document(users, @user_id)
        let uroles =  user.roles == null ? [] : 
          document(users, @user_id).roles

        let lroles = (for role in roles
            for urole in uroles
            filter role._key == urole
        return role)

        let allroles = flatten([(for role in lroles
            for v, e, p in 1..100 outbound role role_assignments
            return v), lroles])

        let permissions = unique(flatten(for role in allroles filter role.permissions != null return role.permissions))
        let isAdministrator = (first(for role in allroles filter role.isAdministrator == true limit 1 return role) != null ) || user.isAdministrator

        return {
            permissions,
            isAdministrator
            }
    ''';

    var lst = (await _dbClient
        .newQuery()
        .addLine(query)
        .addBindVar('user_id', 'users/$userKey')
        .runAndReturnFutureList());

    var result = lst.first;

    var isAdministrator = result['isAdministrator'];
    var permissions =
        (result['permissions'] as List?)?.map((i) => i as String).toSet() ?? {};

    final ret = UserPermissionSet(
      isAdministrator: isAdministrator,
      permissions: permissions,
    );

    return ret;
  }

  @override
  Future<Map<String, dynamic>> getFromUsername(String username) async {
    final userList = await _dbClient.newQuery().addLine('''
            for c in users
            filter c.username == @username
            limit 1
            return c
          ''').addBindVar('username', username).runAndReturnFutureList();
    if (userList.isEmpty) {
      throw NotFound();
    }
    final userMap = userList.first;
    return userMap;
  }

  @override
  Future<Map<String, dynamic>> getFromKey(String key) async {
    final response = await _dbClient.getDocumentByKey('users', key);
    if (response.result.error) {
      throw NotFound();
    }
    final userMap = response.document;
    return userMap;
  }

  @override
  Future<Map<String, dynamic>> updateUser(
    String key,
    Map<String, dynamic> userMap,
  ) async {
    final opResult = await _dbClient.replaceDocument('users', key, userMap);
    final result = opResult.result;
    if (result.error) {
      throw DbException(
        code: result.code.toString(),
        message: result.errorMessage,
        number: result.errorNum.toString(),
      );
    }
    final response = await _dbClient.getDocumentByKey('users', key);
    return response.document;
  }
}
