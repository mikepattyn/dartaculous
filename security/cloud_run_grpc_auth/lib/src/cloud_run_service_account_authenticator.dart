import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:http/http.dart' as http;
import 'package:jose/jose.dart';

import 'cloud_run_base_authenticator.dart';
import 'jwt_flow.dart';

class CloudRunServiceAccountAuthenticator extends CloudRunBaseAuthenticator {
  auth.ServiceAccountCredentials _serviceAccountCredentials;
  String? _projectId;
  String? _keyId;

  CloudRunServiceAccountAuthenticator.fromJson(
      Map<String, dynamic> serviceAccountJson)
      : _serviceAccountCredentials =
            auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
        _projectId = serviceAccountJson['project_id'],
        _keyId = serviceAccountJson['private_key_id'];

  factory CloudRunServiceAccountAuthenticator(
          String serviceAccountJsonString) =>
      CloudRunServiceAccountAuthenticator.fromJson(
          jsonDecode(serviceAccountJsonString));

  String? get projectId => _projectId;

  @override
  Future<auth.AccessToken> obtainAccessCredentials(String uri) async {
    return await _jwtTokenFor(_serviceAccountCredentials, _keyId, uri);
  }
}

Future<auth.AccessToken> _jwtTokenFor(
    auth.ServiceAccountCredentials credentials,
    String? keyId,
    String uri) async {
  final scopes = ['https://' + Uri.parse(uri).host];
  final client = http.Client();

  try {
    var idToken = await JwtFlow(
      credentials.email,
      credentials.privateRSAKey,
      credentials.impersonatedUser,
      scopes,
      client,
    ).run();

    return auth.AccessToken('Bearer', idToken, _getExpiry(idToken));
  } finally {
    client.close();
  }
}

DateTime _getExpiry(String idToken) {
  final token = JsonWebToken.unverified(idToken);
  final expiry = token.claims.expiry?.toUtc();
  return expiry ?? DateTime.now().add(const Duration(hours: 1)).toUtc();
}
