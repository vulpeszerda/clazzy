import 'package:clazzy/domain/model/timeline.dart';
import 'package:clazzy/domain/repository/timeline.dart';

class DataTimelineRepository implements TimelineRepository {
  @override
  Future<List<Article>> getArticles() {
    return Future.delayed(Duration(milliseconds: 3000), () {
      final values = List<Article>.generate(10, (index) {
        return Article(
          id: -1,
          title: 'test title',
          content: 'test content',
          author: User(id: -1, email: 'aaa@aaa.com', username: 'aaa'),
          createdAt: DateTime.now(),
        );
      });
      return Future.value(values);
    });
  }

  @override
  Future<void> likeArticle(int articleId) {
    assert(articleId != null);
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value());
  }

  @override
  Future<void> reportArticle(int articleId) {
    assert(articleId != null);
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value());
  }

  @override
  Future<List<Comment>> getComments(int articleId) {
    assert(articleId != null);

    final values = List<Comment>.generate(10, (index) {
      return Comment(
        id: -1,
        content: 'test content',
        author: User(id: -1, email: 'aaa@aaa.com', username: 'aaa'),
        createdAt: DateTime.now(),
      );
    });
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value(values));
  }

  @override
  Future<Comment> createComment(String content) {
    assert(content != null);
    final value = Comment(
      id: -1,
      content: content,
      author: User(id: -1, email: 'aaa@aaa.com', username: 'aaa'),
      createdAt: DateTime.now(),
    );
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value(value));
  }

  @override
  Future<void> deleteComment(int commentId) {
    assert(commentId != null);
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value());
  }

  @override
  Future<void> likeComment(int commentId) {
    assert(commentId != null);
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value());
  }

  @override
  Future<void> reportComment(int commentId) {
    assert(commentId != null);
    return Future.delayed(Duration(milliseconds: 3000), () => Future.value());
  }
}
