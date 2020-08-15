import 'package:clazzy/domain/model/token.dart';

class Account {
  final Token token;
  final int userId;
  final String email;
  final String username;

  Account(this.token, this.userId, this.email, this.username)
      : assert(token != null),
        assert(userId != null),
        assert(email != null),
        assert(username != null);
}
