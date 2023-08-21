import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/food_app/components/category_title.dart';

final _menuNames = [
  'All',
  'Italian',
  'Asian',
  'Chinese',
  'Burgers',
  'Thai',
];

class CustomMenuBar extends StatefulWidget {
  const CustomMenuBar({super.key});

  @override
  State<CustomMenuBar> createState() => _CustomMenuBarState();
}

class _CustomMenuBarState extends State<CustomMenuBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List<GestureDetector>.generate(
          _menuNames.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CategoryTitle(
              title: _menuNames[index],
              active: index == selectedIndex,
            ),
          ),
        ),
      ],
    );
  }
}
