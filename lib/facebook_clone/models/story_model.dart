import 'package:flutter_ui_pr/facebook_clone/models/user_model.dart';

class Story {
  const Story({
    required this.user,
    required this.imageUrl,
    this.isViewed = false,
  });

  final User user;
  final String imageUrl;
  final bool isViewed;
}
