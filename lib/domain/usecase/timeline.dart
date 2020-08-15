import 'package:clazzy/domain/model/timeline.dart';
import 'package:clazzy/domain/repository/timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

Future<List<Article>> getArticles(BuildContext context) {
  return Provider.of<TimelineRepository>(context, listen: false).getArticles();
}

Future<List<Comment>> getComments(BuildContext context, int articleId) {
  return Provider.of<TimelineRepository>(context, listen: false).getComments(articleId);
}
