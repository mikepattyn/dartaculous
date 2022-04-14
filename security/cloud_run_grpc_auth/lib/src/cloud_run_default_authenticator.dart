import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:http/http.dart' as http;
import 'package:jose/jose.dart';
import 'cloud_run_base_authenticator.dart';

class CloudRunDefaultAuthenticator extends CloudRunBaseAuthenticator {
  @override
  Future<auth.AccessToken> obtainAccessCredentials(String uri) async {
    return await _jwtTokenFor(uri);
  }
}

Future<auth.AccessToken> _jwtTokenFor(String uri) async {
  final client = http.Client();

  try {
    final audience = 'https://' + Uri.parse(uri).host;
    final response = await client.get(
        Uri.parse(
            'http://metadata/computeMetadata/v1/instance/service-accounts/default/identity?audience=$audience'),
        headers: {'Metadata-Flavor': 'Google'});

    final idToken = response.body;

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
