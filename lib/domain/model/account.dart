import 'package:clazzy/domain/model/token.dart';
import 'package:flutter/cupertino.dart';

class Account {
  final Token token;
  final int userId;
  final String email;
  final String username;

  Account({
    Key key,
    @required this.token,
    @required this.userId,
    @required this.email,
    @required this.username,
  })  : assert(token != null),
        assert(userId != null),
        assert(email != null),
        assert(username != null);
}
