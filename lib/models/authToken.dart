import 'package:meta/meta.dart';

@immutable
class AuthToken {
  final String token;
  final int expiration;
  final String refreshToken;

  AuthToken({String token, int expiration, String refreshToken})
      : this.token = token ?? '',
        this.expiration = expiration ?? '',
        this.refreshToken = refreshToken ?? '';

  factory AuthToken.fromJson(Map<String, dynamic> json) {
    return new AuthToken(
        token: json['token'],
        expiration: json['expiration'],
        refreshToken: json['refresh_token']);
  }
}
