import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/auth_template/consts/colors.dart';
import 'package:flutter_ui_pr/auth_template/screens/welcome_screen.dart';

void main() {
  runApp(const AuthTemplateApp());
}

class AuthTemplateApp extends StatelessWidget {
  const AuthTemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title template',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
