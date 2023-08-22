import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

typedef void OnTabCallbackFunction();

const List<IconData> _icons = [
  FontAwesomeIcons.plane,
  FontAwesomeIcons.bed,
  FontAwesomeIcons.personHiking,
  FontAwesomeIcons.personBiking
];

class IconTab extends StatefulWidget {
  const IconTab({
    super.key,
  });

  @override
  State<IconTab> createState() {
    return _IconTabState();
  }
}

class _IconTabState extends State<IconTab> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        _icons.length,
        (index) => _IconTabButton(
          onTabCallback: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          iconData: _icons[index],
          backgroundColor: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          iconColor: _selectedIndex == index
              ? Theme.of(context).colorScheme.primary
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}

class _IconTabButton extends StatelessWidget {
  const _IconTabButton({
    required this.onTabCallback,
    required this.iconData,
    required this.backgroundColor,
    required this.iconColor,
    super.key,
  });

  final OnTabCallbackFunction onTabCallback;
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTabCallback,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }
}
