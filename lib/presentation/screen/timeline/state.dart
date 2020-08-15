import 'package:bloc/bloc.dart';
import 'package:clazzy/domain/model/timeline.dart';
import 'package:clazzy/domain/usecase/timeline.dart';
import 'package:clazzy/util/async.dart';
import 'package:flutter/cupertino.dart';

class TimelineCubit extends Cubit<TimelineState> {
  TimelineCubit() : super(TimelineState(articlesAsync: Uninitialized(null)));

  Future<void> fetch(BuildContext context) async {
    emit(TimelineState(articlesAsync: Loading(state.articlesAsync.value)));
    try {
      final articles = await getArticles(context);
      emit(TimelineState(articlesAsync: Success(articles)));
    } catch (err) {
      emit(TimelineState(articlesAsync: Fail(state.articlesAsync.value, err)));
    }
  }
}

class TimelineState {
  final Async<List<Article>> articlesAsync;

  TimelineState({Key key, this.articlesAsync});
}
