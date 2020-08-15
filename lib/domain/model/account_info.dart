import 'package:flutter/cupertino.dart';

class AccountInfo {
  final int userId;
  final String email;
  final String username;

  AccountInfo({
    Key key,
    this.userId,
    this.email,
    this.username,
  })  : assert(userId != null),
        assert(email != null),
        assert(username != null);
}
