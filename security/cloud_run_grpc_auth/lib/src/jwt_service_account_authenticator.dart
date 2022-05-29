import 'package:googleapis_auth/googleapis_auth.dart' as auth;

import 'grpc_authenticator.dart';
import 'jwt_flow.dart';

class JwtServiceAccountAuthenticator extends GrpcAuthenticator {
  final auth.ServiceAccountCredentials _serviceAccountCredentials;
  final String _privateKeyId;

  JwtServiceAccountAuthenticator(Map<String, dynamic> serviceAccountJson)
      : _serviceAccountCredentials =
            auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
        _privateKeyId = serviceAccountJson['private_key_id'];

  @override
  Future<auth.AccessToken> obtainAccessCredentials(String uri) async {
    final now = DateTime.now().toUtc();
    const expirySeconds = defaultExpirySeconds;

    final timestamp = currentTimestamp(now);
    final claimSet = <String, Object>{
      'iss': _serviceAccountCredentials.email,
      'sub': _serviceAccountCredentials.email,
      'aud': 'https://${Uri.parse(uri).host}/',
      'exp': timestamp + expirySeconds,
      'iat': timestamp,
    };

    final idToken = JwtFlow(_serviceAccountCredentials.privateRSAKey).createJwt(
      claimSet,
      kid: _privateKeyId,
    );

    return auth.AccessToken(
        'Bearer', idToken, now.add(Duration(seconds: expirySeconds)));
  }
}
