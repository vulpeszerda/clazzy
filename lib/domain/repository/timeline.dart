import 'package:clazzy/domain/model/timeline.dart';

class TimelineRepository {
  Future<List<Article>> getArticles() async {
    throw UnimplementedError();
  }

  Future<void> reportArticle(int articleId) async {
    throw UnimplementedError();
  }

  Future<void> likeArticle(int articleId) async {
    throw UnimplementedError();
  }

  Future<List<Comment>> getComments(int articleId) async {
    throw UnimplementedError();
  }

  Future<Comment> createComment(String content) async {
    throw UnimplementedError();
  }

  Future<void> deleteComment(int commentId) async {
    throw UnimplementedError();
  }

  Future<void> reportComment(int commentId) async {
    throw UnimplementedError();
  }

  Future<void> likeComment(int commentId) async {
    throw UnimplementedError();
  }
}
