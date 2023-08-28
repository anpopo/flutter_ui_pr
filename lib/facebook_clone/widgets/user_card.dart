import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/facebook_clone/models/models.dart';
import 'package:flutter_ui_pr/facebook_clone/widgets/profile_avatar.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(
            imageUrl: user.imageUrl,
          ),
          const SizedBox(
            width: 6,
          ),
          Flexible(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
