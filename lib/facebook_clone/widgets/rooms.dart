import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/facebook_clone/config/palette.dart';
import 'package:flutter_ui_pr/facebook_clone/models/user_model.dart';
import 'package:flutter_ui_pr/facebook_clone/widgets/profile_avatar.dart';
import 'package:flutter_ui_pr/facebook_clone/widgets/widgets.dart';

class Rooms extends StatelessWidget {
  const Rooms({
    required this.onlineUsers,
    super.key,
  });

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 2 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 4,
        ),
        height: 60,
        color: Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (ctx, idx) {
            if (idx == 0) {
              return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: _CreateRoomButton());
            }

            final user = onlineUsers[idx - 1];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(
          color: Palette.facebookBlue,
        ),
        backgroundColor: Colors.white,
        side: BorderSide(
          width: 3,
          color: Colors.blueAccent[100]!,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        children: [
          // ShaderMask(
          //   shaderCallback: (Rect rect) {
          //     return Palette.createRoomGradient.createShader(rect);
          //   },
          //   child: const Icon(
          //     Icons.video_call,
          //     size: 35,
          //     color: Colors.white,
          //   ),
          // ),
          Icon(
            Icons.video_call,
            size: 35,
            color: Colors.purple,
          ),
          const SizedBox(
            width: 4,
          ),
          const Text('Create\nRoom')
        ],
      ),
    );
  }
}
