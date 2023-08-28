import 'package:flutter_ui_pr/facebook_clone/models/user_model.dart';

class Post {
  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.likes,
    required this.comments,
    required this.shares,
    this.imageUrl,
  });

  final User user;
  final String caption;
  final String timeAgo;
  final int likes;
  final int comments;
  final int shares;
  final String? imageUrl;
}
