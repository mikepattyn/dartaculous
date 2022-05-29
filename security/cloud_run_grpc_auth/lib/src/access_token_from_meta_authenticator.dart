import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:http/http.dart' as http;
import 'grpc_authenticator.dart';

class AccessTokenFromMetaAuthenticator extends GrpcAuthenticator {
  @override
  Future<auth.AccessToken> obtainAccessCredentials(String uri) async {
    final client = http.Client();

    try {
      final response = await client.get(
        Uri.parse(
          'http://metadata/computeMetadata/v1/instance/service-accounts/default/token',
        ),
        headers: {'Metadata-Flavor': 'Google'},
      );

      final jsonResponse = jsonDecode(response.body);
      final token = jsonResponse['access_token'];
      final expires = DateTime.now()
          .add(Duration(seconds: jsonResponse['expires_in']))
          .toUtc();

      return auth.AccessToken('Bearer', token, expires);
    } finally {
      client.close();
    }
  }
}
