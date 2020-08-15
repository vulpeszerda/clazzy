import 'package:clazzy/domain/model/account_info.dart';
import 'package:clazzy/presentation/screen.dart';
import 'package:clazzy/util/async.dart';
import 'package:clazzy/util/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class MyInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen<MyInfoCubit>(
      appBar: AppBar(title: Text('My Info')),
      body: BlocListener<MyInfoCubit, MyInfoState>(
        listener: _onStateChanged,
        child: _Body(),
      ),
      onResumed: _onResumed,
      cubitBuilder: (_) => MyInfoCubit(),
    );
  }

  void _onResumed(BuildContext context) {
    context.bloc<MyInfoCubit>().fetch(context);
  }

  void _onStateChanged(BuildContext context, MyInfoState state) {
    if (state.accountInfoAsync is Fail) {
      final fail = state.accountInfoAsync as Fail<AccountInfo>;
      showError(
        context: context,
        exception: fail.error,
        prefix: 'Failed to load\n',
        onRetry: () => context.bloc<MyInfoCubit>().fetch(context),
      );
    }
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text('My info', style: TextStyle(fontSize: 18.0)),
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            ),
            Row(
              children: [
                Text('username: '),
                BlocBuilder<MyInfoCubit, MyInfoState>(
                  builder: (context, state) {
                    if (state.accountInfoAsync.value != null) {
                      return Text(state.accountInfoAsync.value.username);
                    } else {
                      return Text('-');
                    }
                  },
                )
              ],
            ),
            Row(
              children: [
                Text('email: '),
                BlocBuilder<MyInfoCubit, MyInfoState>(
                  builder: (context, state) {
                    if (state.accountInfoAsync.value != null) {
                      return Text(state.accountInfoAsync.value.email);
                    } else {
                      return Text('-');
                    }
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
