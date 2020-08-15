import 'package:clazzy/domain/model/account_info.dart';
import 'package:clazzy/domain/repository/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

Future<AccountInfo> getAccountInfo(BuildContext context) {
  return Provider.of<AccountRepository>(context, listen: false).getAccountInfo();
}

Future<void> login(BuildContext context, String email, String password) async {
  final repository = Provider.of<AccountRepository>(context, listen: false);
  final cache = Provider.of<AccountCache>(context, listen: false);
  final account = await repository.login(email, password);
  cache.setAccount(account);
}

void logout(BuildContext context) {
  final cache = Provider.of<AccountCache>(context, listen: false);
  cache.setAccount(null);
}
