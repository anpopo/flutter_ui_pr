import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/travel_ui/components/icon_tab.dart';

class TravelHomeScreen extends StatelessWidget {
  const TravelHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                'What you would like to find?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            IconTab(),
          ],
        ),
      ),
    );
  }
}
