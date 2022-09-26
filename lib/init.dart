import 'package:flutter/material.dart';


// Home Screen Constants
const Color khomeBgColor=Color(0xff0A0D22);
const String khomeAppBarTitle='BMI Calculator';



// Home Screen Cards Constants

enum gender {
man,
woman,
}
const Color khomeCardBgColor=Color(0xff1d1e33);
const Color khomeInactiveCardBgColor=Color(0xff111328);
const double khomeCardmargin=15.0;
const double khomeCardRadius=10.0;
const double khomeCardiconsize=80.0;
const Color khomeCardiconcolor=Color(0xff8d8e98);
const double khomeCardiconandtextspace=10.0;

const TextStyle khomeCardtextStyle=TextStyle(
  fontSize: 18.0,
  color: khomeCardiconcolor,
);
// Home Height Card theme
const TextStyle khomeHeightCardHeightTextStyle=TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.w900,
  color: khomeCardiconcolor,
);


const String khomeSliderHeightTitle ='Height';
const String khomeSliderHeightunit ='CM';
const Color khomeSliderActiveColor = Color(0xFFEB1555);
const Color khomeSliderInActiveColor = Color(0xFF8D8E98);