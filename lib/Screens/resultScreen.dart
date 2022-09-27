import 'package:bmo_calculator_flutter/Helper/customwidgets.dart';
import 'package:bmo_calculator_flutter/Helper/init.dart';
import 'package:flutter/material.dart';


class resultShow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: khomeBgColor,
      appBar: AppBar(
        backgroundColor: khomeBgColor,
        title: Text(khomeAppBarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '   Your Result',
            style: kTitleTextStyle,
            ),
          ),

          Expanded(
          flex: 5,
            child: cardsHomescreen(
              color: khomeCardBgColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Normal",
                    style: kResultTextStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                    'Result',
                  style: khomeHeightCardHeightTextStyle,
                  textAlign: TextAlign.center,
                  ),
                Text("HAPPY HAPPY Massage",
                  style: kResultMassageStyle,
                  textAlign: TextAlign.center,
                ),
              ],

              ),
            ),
          ),
          bottomLargeButton(context:  context, btnText: 'Re-Calculate',
          onTap: (){
            Navigator.of(context).pop();
          }
          ),
        ],
      ),
    );
  }
}

