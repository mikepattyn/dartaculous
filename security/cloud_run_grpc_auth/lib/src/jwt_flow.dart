// ignore_for_file: implementation_imports

import 'dart:convert';

import 'package:googleapis_auth/src/crypto/rsa.dart';
import 'package:googleapis_auth/src/crypto/rsa_sign.dart';
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:googleapis_auth/src/utils.dart';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:jose/jose.dart';

const _uri = 'urn:ietf:params:oauth:grant-type:jwt-bearer';
const defaultExpirySeconds = 3600;

class JwtFlow {
  // All details are described at:
  // https://developers.google.com/accounts/docs/OAuth2ServiceAccount
  // JSON Web Signature (JWS) requires signing a string with a private key.

  final RS256Signer _signer;

  JwtFlow(
    RSAPrivateKey key,
  ) : _signer = RS256Signer(key);

  Future<auth.AccessToken> oauthTokenRequest(
    http.Client httpClient, {
    required String issuer,
    required List<String> scopes,
    final String? sub,
  }) async {
    final timestamp = currentTimestamp();

    final jwtClaimSet = {
      'iss': issuer,
      'scope': scopes.join(' '),
      'aud': googleOauth2TokenEndpoint.toString(),
      'exp': timestamp + defaultExpirySeconds,
      'iat': timestamp,
      if (sub != null) 'sub': sub,
    };

    String jwt = createJwt(jwtClaimSet);

    // https://developers.google.com/identity/protocols/oauth2/service-account#authorizingrequests
    final response = await httpClient.oauthTokenRequest({
      'grant_type': _uri,
      'assertion': jwt,
    });
    final String? idToken = response['id_token'];
    if (idToken != null) {
      final expiry = _getExpiry(idToken);
      return auth.AccessToken('Bearer', idToken, expiry);
    }

    final expires =
        DateTime.now().add(Duration(seconds: response['expires_in'])).toUtc();
    final token = response['access_token'];

    return auth.AccessToken('Bearer', token, expires);
  }

  String createJwt(Map<String, Object> jwtClaimSet, {String? kid}) {
    final jwtHeader = {
      'alg': 'RS256',
      'typ': 'JWT',
      if (kid != null) 'kid': kid,
    };
    final jwtHeaderBase64 = _base64url(ascii.encode(jsonEncode(jwtHeader)));
    final jwtClaimSetBase64 = _base64url(utf8.encode(jsonEncode(jwtClaimSet)));

    final jwtSignatureInput = '$jwtHeaderBase64.$jwtClaimSetBase64';
    final jwtSignatureInputInBytes = ascii.encode(jwtSignatureInput);

    final signature = _signer.sign(jwtSignatureInputInBytes);
    final jwt = '$jwtSignatureInput.${_base64url(signature)}';
    return jwt;
  }
}

int currentTimestamp([DateTime? moment]) {
  moment ??= DateTime.now();
  final timestamp = moment.toUtc().millisecondsSinceEpoch ~/ 1000 -
      maxExpectedTimeDiffInSeconds;
  return timestamp;
}

String _base64url(List<int> bytes) =>
    base64Url.encode(bytes).replaceAll('=', '');

DateTime _getExpiry(String idToken) {
  final token = JsonWebToken.unverified(idToken);
  final expiry = token.claims.expiry?.toUtc();
  return expiry ?? DateTime.now().add(const Duration(hours: 1)).toUtc();
}
