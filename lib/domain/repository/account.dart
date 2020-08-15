import 'package:clazzy/domain/model/account.dart';
import 'package:clazzy/domain/model/account_info.dart';

class AccountRepository {
  Future<AccountInfo> getAccountInfo() async {
    throw UnimplementedError();
  }

  Future<Account> login(String email, String password) {
    throw UnimplementedError();
  }
}

class AccountCache {
  Account getAccount() {
    throw UnimplementedError();
  }

  void setAccount(Account account) {
    throw UnimplementedError();
  }
}
