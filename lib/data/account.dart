import 'package:clazzy/domain/model/account.dart';
import 'package:clazzy/domain/model/account_info.dart';
import 'package:clazzy/domain/repository/account.dart';

class DataAccountRepository implements AccountRepository {
  @override
  Future<AccountInfo> getAccountInfo() {
    return Future.delayed(Duration(milliseconds: 3000), () => throw Exception('test'));
  }

  @override
  Future<Account> login(String email, String password) {
    return Future.delayed(Duration(milliseconds: 3000), () => throw Exception());
  }
}

class DataAccountCache implements AccountCache {
  var _account;

  @override
  Account getAccount() {
    return _account;
  }

  @override
  void setAccount(Account account) {
    this._account = account;
  }
}
