import 'package:cloud_run_grpc_auth/src/oauth_service_account_authenticator.dart';
import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'access_token_from_meta_authenticator.dart';
import 'id_token_from_meta_authenticator.dart';
import 'jwt_service_account_authenticator.dart' as jwt;

const _tokenExpirationThreshold = Duration(seconds: 30);

abstract class GrpcAuthenticator {
  factory GrpcAuthenticator.idTokenFromMeta() {
    return IdTokenFromMetaAuthenticator();
  }

  factory GrpcAuthenticator.accessTokenFromMeta() {
    return AccessTokenFromMetaAuthenticator();
  }

  factory GrpcAuthenticator.idTokenFromServiceAccountOAuth(
      Map<String, dynamic> serviceAccountJson) {
    return OAuthServiceAccountAuthenticator(serviceAccountJson);
  }

  factory GrpcAuthenticator.idTokenFromServiceAccountJwt(
      Map<String, dynamic> serviceAccountJson) {
    return jwt.JwtServiceAccountAuthenticator(serviceAccountJson);
  }

  @protected
  GrpcAuthenticator();

  auth.AccessToken? _accessToken;
  late String _lastUri;
  var _lastUriSet = false;

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    if (_accessToken == null ||
        _accessToken!.hasExpired ||
        !_lastUriSet ||
        uri != _lastUri) {
      _accessToken = await obtainAccessCredentials(uri);
      _lastUri = uri;
      _lastUriSet = true;
    }

    final auth = '${_accessToken!.type} ${_accessToken!.data}';
    metadata['authorization'] = auth;

    if (_tokenExpiresSoon) {
      // Token is about to expire. Extend it prematurely.
      try {
        await obtainAccessCredentials(_lastUri);
      } catch (_) {}
    }
  }

  bool get _tokenExpiresSoon => _accessToken!.expiry
      .subtract(_tokenExpirationThreshold)
      .isBefore(DateTime.now().toUtc());

  CallOptions get toCallOptions => CallOptions(providers: [authenticate]);

  @protected
  Future<auth.AccessToken> obtainAccessCredentials(String uri);
}
