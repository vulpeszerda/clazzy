class Token {
  final String accessToken;
  final String refreshToken;
  final DateTime expireAt;

  Token(this.accessToken, this.refreshToken, this.expireAt)
      : assert(accessToken != null),
        assert(refreshToken != null),
        assert(expireAt != null);
}
