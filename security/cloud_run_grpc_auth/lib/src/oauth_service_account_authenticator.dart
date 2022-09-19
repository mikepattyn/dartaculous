import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:http/http.dart' as http;

import 'grpc_authenticator.dart';
import 'jwt_flow.dart';

class OAuthServiceAccountAuthenticator extends GrpcAuthenticator {
  final auth.ServiceAccountCredentials _serviceAccountCredentials;

  OAuthServiceAccountAuthenticator(Map<String, dynamic> serviceAccountJson)
      : _serviceAccountCredentials =
            auth.ServiceAccountCredentials.fromJson(serviceAccountJson);

  @override
  Future<auth.AccessToken> obtainAccessCredentials(String uri) async {
    final client = http.Client();

    try {
      final token = await JwtFlow(_serviceAccountCredentials.privateRSAKey)
          .oauthTokenRequest(
        client,
        issuer: _serviceAccountCredentials.email,
        scopes: ['https://${Uri.parse(uri).host}'],
        sub: _serviceAccountCredentials.impersonatedUser,
      );

      return token;
    } finally {
      client.close();
    }
  }
}
