import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

const _tokenExpirationThreshold = Duration(seconds: 30);

abstract class CloudRunBaseAuthenticator {
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
      await obtainAccessCredentials(_lastUri).catchError((_) {});
    }
  }

  bool get _tokenExpiresSoon => _accessToken!.expiry
      .subtract(_tokenExpirationThreshold)
      .isBefore(DateTime.now().toUtc());

  CallOptions get toCallOptions => CallOptions(providers: [authenticate]);

  @protected
  Future<auth.AccessToken> obtainAccessCredentials(String uri);
}
