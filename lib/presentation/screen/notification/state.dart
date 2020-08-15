import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationState());
}

class NotificationState {
  NotificationState({Key key});
}
