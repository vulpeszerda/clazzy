import 'package:flutter/cupertino.dart';

class Token {
  final String accessToken;
  final String refreshToken;
  final DateTime expireAt;

  Token({
    Key key,
    @required this.accessToken,
    @required this.refreshToken,
    @required this.expireAt,
  })  : assert(accessToken != null),
        assert(refreshToken != null),
        assert(expireAt != null);
}
