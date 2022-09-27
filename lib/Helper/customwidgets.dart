import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/Helper/init.dart';



// Home Screen Cards shapes / Boxes Containg all the functionalities
class cardsHomescreen extends StatelessWidget {
  cardsHomescreen({this.color, this.cardChild, this.onpress});
  Color color;
  Widget cardChild;

  void Function()
  onpress;
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

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
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

GestureDetector bottomLargeButton(
    {BuildContext context, String btnText, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(

      child: Center(child: Text(btnText,style: TextStyle(
        fontSize: 30,
      ),)),
      color: Colors.red,
      margin: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: 50.0,
    ),
  );
}



