import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/facebook_clone/config/palette.dart';
import 'package:flutter_ui_pr/facebook_clone/models/user_model.dart';
import 'package:flutter_ui_pr/facebook_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.currentUser,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
    super.key,
  });

  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                letterSpacing: -1,
              ),
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: 600,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UserCard(user: currentUser),
                const SizedBox(width: 12),
                CircleButton(
                    icon: Icons.search, iconSize: 30, onPressed: () {}),
                CircleButton(
                    icon: MdiIcons.facebookMessenger,
                    iconSize: 30,
                    onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
