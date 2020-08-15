import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showError({
  Key key,
  @required BuildContext context,
  Exception exception,
  String prefix = '',
  void Function() onRetry,
}) {
  final action = onRetry != null ? SnackBarAction(label: 'Retry', onPressed: onRetry) : null;
  final snackBar = SnackBar(
    content: Text('$prefix${exception.toString()}'),
    duration: Duration(days: 365),
    action: action,
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
