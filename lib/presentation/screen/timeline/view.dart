import 'package:clazzy/domain/model/timeline.dart';
import 'package:clazzy/presentation/screen/timeline/state.dart';
import 'package:clazzy/util/async.dart';
import 'package:clazzy/util/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screen.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen<TimelineCubit>(
      appBar: AppBar(title: Text('Timeline')),
      body: BlocListener<TimelineCubit, TimelineState>(
        listener: _onStateChanged,
        child: _Body(),
      ),
      cubitBuilder: (_) => TimelineCubit(),
      onResumed: _onResumed,
    );
  }

  void _onResumed(BuildContext context) {
    context.bloc<TimelineCubit>().fetch(context);
  }

  void _onStateChanged(BuildContext context, TimelineState state) {
    if (state.articlesAsync is Fail) {
      final fail = state.articlesAsync as Fail<List<Article>>;
      showError(
        context: context,
        exception: fail.error,
        prefix: 'Failed to load\n',
        onRetry: () => context.bloc<TimelineCubit>().fetch(context),
      );
    }
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimelineCubit, TimelineState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.articlesAsync.value != null ? state.articlesAsync.value.length : 0,
          itemBuilder: (context, index) {
            assert(state.articlesAsync.value != null);
            assert(state.articlesAsync.value.length >= index);
            final item = state.articlesAsync.value[index];
            return _ArticleItem(article: item);
          },
        );
      },
    );
  }
}

class _ArticleItem extends StatelessWidget {
  final Article article;

  _ArticleItem({Key key, @required this.article}) : assert(article != null);

  @override
  Widget build(BuildContext context) {
    return Text('${article.title}');
  }
}
