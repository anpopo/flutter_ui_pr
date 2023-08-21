import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/auth_template/consts/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    required this.iconData,
    super.key,
    this.color = kPrimaryColor,
    this.isObscure = false,
  });

  final String hintText;
  final IconData iconData;
  final Color color;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            iconData,
            color: color,
          ),
        ),
        Expanded(
          child: TextField(
            obscureText: isObscure,
            decoration: InputDecoration(hintText: hintText),
          ),
        ),
      ],
    );
  }
}
