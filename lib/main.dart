import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/customwidgets.dart';
import 'package:bmo_calculator_flutter/init.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0A0D22),
        appBar: AppBar(
          backgroundColor: Color(0xff0A0D22),
          title: Text('BMI Calculor'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Expanded(
             child: Row(
               children: [
                Expanded(
                  child:cardsHomescreen(),
                ),
                 Expanded(
                   child: cardsHomescreen(),
                 ),
               ],
             ),
           ),
            Expanded(
              child: cardsHomescreen(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:cardsHomescreen(),
                  ),
                  Expanded(
                    child: cardsHomescreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
