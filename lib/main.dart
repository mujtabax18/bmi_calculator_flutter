import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/customwidgets.dart';
import 'package:bmo_calculator_flutter/init.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  gender selectedgender;
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
                   color: selectedgender==gender.man? khomeCardBgColor: khomeInactiveCardBgColor,
                   cardChild: CardChild(  FontAwesomeIcons.mars, 'Male'),
                  onpress:(){
                    setState((){
                    selectedgender=gender.man;
                    });},
                  ),
                ),
                 Expanded(
                   child:  cardsHomescreen(
                    color: selectedgender==gender.woman? khomeCardBgColor: khomeInactiveCardBgColor,
                    cardChild: CardChild(  FontAwesomeIcons.venus, 'Female'),
                     onpress:(){
                       setState((){
                         selectedgender=gender.woman;
                       });},
                   ),
                 ),
               ],
             ),
           ),
            Expanded(
              child: cardsHomescreen(
              color:   khomeCardBgColor,
                cardChild: Column(
                  children: [
                    Text(
                      "Height",
                      style: khomeCardtextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: cardsHomescreen(

                      color:   khomeCardBgColor,
                    ),
                  ),
                  Expanded(
                    child: cardsHomescreen(
                      color:   khomeCardBgColor,
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

