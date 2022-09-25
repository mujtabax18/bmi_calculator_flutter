import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/homepage.dart';
void main() {
  runApp( MyAPP());
}
class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: homeInputPage(),
    );
  }
}

