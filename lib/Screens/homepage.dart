import 'package:flutter/material.dart';
import 'package:bmo_calculator_flutter/Helper/init.dart';
import 'package:bmo_calculator_flutter/Helper/customwidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeInputPage extends StatefulWidget {


  @override
  State<homeInputPage> createState() => _homeInputPageState();
}

class _homeInputPageState extends State<homeInputPage> {
  gender selectedgender;
  int height = 150;
  int weight = 15;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: khomeBgColor,
      appBar: AppBar(
        backgroundColor: khomeBgColor,
        title: Text(khomeAppBarTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(

              /// Top Male Female Row
              children: [
                Expanded(
                  child: cardsHomescreen(
                    color: selectedgender == gender.man
                        ? khomeCardBgColor
                        : khomeInactiveCardBgColor,
                    cardChild: CardChild(FontAwesomeIcons.mars, 'Male'),
                    onpress: () {
                      setState(() {
                        selectedgender = gender.man;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: cardsHomescreen(
                    color: selectedgender == gender.woman
                        ? khomeCardBgColor
                        : khomeInactiveCardBgColor,
                    cardChild: CardChild(FontAwesomeIcons.venus, 'Female'),
                    onpress: () {
                      setState(() {
                        selectedgender = gender.woman;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(

            /// Height Card
            child: cardsHomescreen(
              color: khomeCardBgColor,
              cardChild: Column(
                children: [
                  Text(
                    khomeSliderHeightTitle,
                    style: khomeCardtextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                        style: khomeHeightCardHeightTextStyle,
                      ),
                      Text(khomeSliderHeightunit,
                        style: khomeCardtextStyle
                        ,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(value: height.toDouble(),
                      max: 250,
                      min: 120,
                      activeColor: khomeSliderActiveColor,
                      inactiveColor: khomeSliderInActiveColor,
                      onChanged: (double sldv) {
                        setState(() {
                          height = sldv.round();
                        });
                      },
                    ),
                  )
                ],

              ),
            ),
          ),
          Expanded(

            /// Age and Weight Row
            child: Row(
              children: [
                Expanded(
                  child: cardsHomescreen(
                    color: khomeCardBgColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age",
                          style: khomeCardtextStyle,
                        ),
                        Text(age.toString(),
                          style: khomeHeightCardHeightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: cardsHomescreen(
                    color: khomeCardBgColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight",
                          style: khomeCardtextStyle,

                        ),
                        Text(weight.toString(),
                          style: khomeHeightCardHeightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomLargeButton(context: context, btnText: 'Calculate',onTap: (){
            Navigator.of(context).pushNamed('/result');
          }),
        ],
      ),
    );
  }

}