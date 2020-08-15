import 'package:clazzy/presentation/screen/notification/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screen.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen<NotificationCubit>(
      appBar: AppBar(title: Text('Notification')),
      body: Text('Notification'),
      cubitBuilder: (_) => NotificationCubit(),
    );
  }
}
