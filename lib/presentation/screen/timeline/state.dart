import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class TimelineCubit extends Cubit<TimelineState> {
  TimelineCubit() : super(TimelineState());
}

class TimelineState {
  TimelineState({Key key});
}
