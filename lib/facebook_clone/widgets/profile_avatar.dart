import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/facebook_clone/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
  });

  final String? imageUrl;
  final bool isActive;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 17 : 20,
            backgroundColor: Colors.grey[200],
            backgroundImage:
                imageUrl == null ? null : CachedNetworkImageProvider(imageUrl!),
          ),
        ),
        if (isActive)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Palette.online,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
          )
        else
          const SizedBox.shrink(),
      ],
    );
  }
}
