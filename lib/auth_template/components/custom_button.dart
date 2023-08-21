import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/auth_template/consts/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.iconData,
    super.key,
    this.color = Colors.white60,
  });

  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
        ),
      ),
      child: Icon(
        iconData,
        color: color,
        size: 16,
      ),
    );
  }
}
