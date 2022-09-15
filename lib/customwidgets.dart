import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/init.dart';



// Home Screen Cards shapes / Boxes Containg all the functionalities
class cardsHomescreen extends StatelessWidget {
  cardsHomescreen({this.color, this.cardChild, this.onpress});
  Color color;
  Widget cardChild;

  void Function() onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(khomeCardmargin),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(khomeCardRadius)
        ),
      ),
    );
  }
}


// home screen male female icon Card
class CardChild extends StatelessWidget {
  CardChild(
      this.icon,
      this.iconText,
      );
final IconData icon;
final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: khomeCardiconsize,
          color: khomeCardiconcolor,
        ),
        SizedBox(
      height: khomeCardiconandtextspace,
    ),
        Text(
          iconText,
          style: khomeCardtextStyle,
        ),
      ],
    );
  }
}


// Home Screen Slider wadit


