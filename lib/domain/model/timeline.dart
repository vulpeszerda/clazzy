import 'package:flutter/cupertino.dart';

class Article {
  final int id;
  final String title;
  final String content;
  final User author;
  final DateTime createdAt;
  final int likeCount;
  final int commentCount;

  Article({
    Key key,
    @required this.id,
    @required this.title,
    @required this.content,
    @required this.author,
    @required this.createdAt,
    this.likeCount = 0,
    this.commentCount = 0,
  })  : assert(id != null),
        assert(title != null),
        assert(author != null),
        assert(likeCount != null),
        assert(createdAt != null);
}

class Comment {
  final int id;
  final String content;
  final User author;
  final DateTime createdAt;
  final int likeCount;
  final bool deleted;
  final bool reported;
  final int parentId;

  Comment(
      {Key key,
      @required this.id,
      @required this.content,
      @required this.author,
      @required this.createdAt,
      this.likeCount = 0,
      this.deleted = false,
      this.reported = false,
      this.parentId})
      : assert(id != null),
        assert(content != null),
        assert(author != null),
        assert(createdAt != null);
}

class User {
  final int id;
  final String email;
  final String username;

  User({
    Key key,
    @required this.id,
    @required this.email,
    @required this.username,
  })  : assert(id != null),
        assert(email != null),
        assert(username != null);
}
