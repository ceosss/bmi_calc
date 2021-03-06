import 'package:flutter/material.dart';
import 'Screens/inputScreen.dart';
import 'Components/constants.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        accentColor: accentColor,
        scaffoldBackgroundColor: primaryColor,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI - CALC",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body:
            // SafeArea(
            // child:
            InputScreen(),
        // ),
      ),
    );
  }
}
