// ignore_for_file: implementation_imports

import 'dart:convert';

import 'package:googleapis_auth/src/crypto/rsa.dart';
import 'package:googleapis_auth/src/crypto/rsa_sign.dart';
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:googleapis_auth/src/utils.dart';
import 'package:http/http.dart' as http;

class JwtFlow {
  // All details are described at:
  // https://developers.google.com/accounts/docs/OAuth2ServiceAccount
  // JSON Web Signature (JWS) requires signing a string with a private key.

  final String _clientEmail;
  final RS256Signer _signer;
  final List<String> _scopes;
  final String? _user;
  final http.Client _client;

  JwtFlow(
    this._clientEmail,
    RSAPrivateKey key,
    this._user,
    this._scopes,
    this._client,
  ) : _signer = RS256Signer(key);

  Future<String> run() async {
    final timestamp = DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000 -
        maxExpectedTimeDiffInSeconds;

    final jwtHeader = {'alg': 'RS256', 'typ': 'JWT'};
    final jwtHeaderBase64 = _base64url(ascii.encode(jsonEncode(jwtHeader)));

    final jwtClaimSet = {
      'iss': _clientEmail,
      'scope': _scopes.join(' '),
      'aud': googleOauth2TokenEndpoint.toString(),
      'exp': timestamp + 3600,
      'iat': timestamp,
      if (_user != null) 'sub': _user!,
    };
    final jwtClaimSetBase64 = _base64url(utf8.encode(jsonEncode(jwtClaimSet)));

    final jwtSignatureInput = '$jwtHeaderBase64.$jwtClaimSetBase64';
    final jwtSignatureInputInBytes = ascii.encode(jwtSignatureInput);

    final signature = _signer.sign(jwtSignatureInputInBytes);
    final jwt = '$jwtSignatureInput.${_base64url(signature)}';

    // https://developers.google.com/identity/protocols/oauth2/service-account#authorizingrequests
    final response = await _client.oauthTokenRequest({
      'grant_type': _uri,
      'assertion': jwt,
    });
    return response['id_token'];
  }
}

const _uri = 'urn:ietf:params:oauth:grant-type:jwt-bearer';

String _base64url(List<int> bytes) =>
    base64Url.encode(bytes).replaceAll('=', '');
