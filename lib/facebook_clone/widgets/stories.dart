import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/facebook_clone/config/palette.dart';
import 'package:flutter_ui_pr/facebook_clone/models/story_model.dart';
import 'package:flutter_ui_pr/facebook_clone/models/user_model.dart';
import 'package:flutter_ui_pr/facebook_clone/widgets/widgets.dart';

class Stories extends StatelessWidget {
  const Stories({
    required this.currentUser,
    required this.storeis,
    super.key,
  });

  final User currentUser;
  final List<Story> storeis;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        itemCount: 1 + storeis.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(isAddStory: true, currentUser: currentUser),
            );
          }

          final story = storeis[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: _StoryCard(story: story),
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    this.isAddStory = false,
    this.currentUser,
    this.story,
    super.key,
  });

  final bool isAddStory;
  final User? currentUser;
  final Story? story;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover,
              imageUrl:
                  (isAddStory ? currentUser?.imageUrl : story?.imageUrl) ?? ''),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12),
            boxShadow: Responsive.isDesktop(context)
                ? const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(
                        0,
                        2,
                      ),
                      blurRadius: 4,
                    ),
                  ]
                : null,
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: isAddStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: Palette.facebookBlue,
                    onPressed: () {},
                  ),
                )
              : ProfileAvatar(
                  imageUrl: story?.user.imageUrl,
                  hasBorder: !(story?.isViewed ?? false),
                ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            isAddStory ? 'Add to Story' : story?.user.name ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
