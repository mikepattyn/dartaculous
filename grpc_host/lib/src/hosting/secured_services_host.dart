import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';
import 'package:security_repository/security_repository.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';
import 'package:squarealfa_security/squarealfa_security.dart';

abstract class SecuredServicesHost<TUser extends UserBase<TUserCache>,
    TUserCache extends UserCacheBase> extends ServicesHost {
  SecuredServicesHost(HostParameters parameters) : super(parameters);

  UserRepositoryBase get userRepository;
  MapMapper<TUser> get userMapMapper;

  late final TokenSettings tokenSettings;
  late final JsonWebTokenHandler tokenHandler;
  late final TokenServicesParameters tokenServicesParameters;

  @override
  Future init() async {
    tokenSettings = hostSettings.tokenSettings;
    tokenHandler = JsonWebTokenHandler(tokenSettings.key);
    tokenServicesParameters = TokenServicesParameters(
      userRepository: userRepository,
      tokenHandler: tokenHandler,
      tokenIssuer: tokenSettings.issuer,
      tokenAudience: tokenSettings.audience,
    );
  }

  @override
  Future registerContainedDependencies() async {
    await super.registerContainedDependencies();
  }

  @override
  List<Interceptor> get interceptors => [
        ...super.interceptors,
        (call, method) async {
          await call.authenticate(
            tokenServicesParameters,
            userRepository,
            userMapMapper,
          );
        }
      ];
}
