part of 'authentication_extensions.dart';

class _ServiceCallExtra {
  Principal? principal;
  JwtPayload? jwtPayload;
  String? idToken;

  _ServiceCallExtra({
    this.principal,
    this.jwtPayload,
    this.idToken,
  });
}
