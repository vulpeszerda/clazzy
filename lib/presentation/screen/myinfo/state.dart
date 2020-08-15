import 'package:bloc/bloc.dart';
import 'package:clazzy/domain/model/account_info.dart';
import 'package:clazzy/domain/usecase/account.dart';
import 'package:clazzy/util/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyInfoCubit extends Cubit<MyInfoState> {
  MyInfoCubit() : super(MyInfoState(accountInfoAsync: Uninitialized(null)));

  Future<void> fetch(BuildContext context) async {
    emit(MyInfoState(accountInfoAsync: Loading(state.accountInfoAsync.value)));
    try {
      final accountInfo = await getAccountInfo(context);
      emit(MyInfoState(accountInfoAsync: Success(accountInfo)));
    } catch (err) {
      emit(MyInfoState(accountInfoAsync: Fail(state.accountInfoAsync.value, err)));
    }
  }
}

class MyInfoState {
  final Async<AccountInfo> accountInfoAsync;

  MyInfoState({Key key, this.accountInfoAsync});
}
