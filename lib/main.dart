import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/customwidgets.dart';
import 'package:bmo_calculator_flutter/init.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        backgroundColor: khomeBgColor,
        appBar: AppBar(
          backgroundColor: khomeBgColor,
          title: Text(khomeAppBarTitle),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Expanded(
             child: Row(
               children: [
                Expanded(
                  child: cardsHomescreen(
                    khomeCardBgColor,
                    CardChild(  FontAwesomeIcons.mars, 'Male'),
                  ),
                ),
                 Expanded(
                   child:  cardsHomescreen(
                     khomeCardBgColor,
                     CardChild(  FontAwesomeIcons.venus, 'Female'),
                   ),
                 ),
               ],
             ),
           ),
            Expanded(
              child: cardsHomescreen(
                khomeCardBgColor,
                CardChild(  FontAwesomeIcons.mars, 'Male'),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: cardsHomescreen(
                      khomeCardBgColor,
                      CardChild(  FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                  Expanded(
                    child: cardsHomescreen(
                      khomeCardBgColor,
                      CardChild(  FontAwesomeIcons.mars, 'Male'),
                    ),
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
