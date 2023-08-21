import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/food_app/consts/colors.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    required this.title,
    super.key,
    this.active = false,
  });

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
