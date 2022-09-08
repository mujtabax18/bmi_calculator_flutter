import 'package:flutter/material.dart';



// Home Screen Cards shapes / Boxes Containg all the functionalities
class cardsHomescreen extends StatefulWidget {
  @override
  State<cardsHomescreen> createState() => _cardsHomescreenState();
}

class _cardsHomescreenState extends State<cardsHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
