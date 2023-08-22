import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/travel_ui/screens/travel_home_screen.dart';

void main() {
  runApp(const TravelUiApp());
}

class TravelUiApp extends StatelessWidget {
  const TravelUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3EBACE),
          secondary: const Color(0xFFD8ECF1),
        ),
        primaryColor: const Color(0xFF3EBACE),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
      ),
      home: const TravelHomeScreen(),
    );
  }
}
