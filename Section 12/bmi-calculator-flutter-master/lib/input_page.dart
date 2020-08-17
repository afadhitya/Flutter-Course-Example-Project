import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'card_content.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const int RED = 0xFFEB1555;
const BOTTOM_BUTTON_TOP_MARGIN = 10.00;
const BOTTOM_CONTAINER_HEIGHT = 80.00;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColorCard = inactiveCardColor;
  Color femaleColorCard = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleColorCard == inactiveCardColor) {
        maleColorCard = activeCardColor;
        femaleColorCard = inactiveCardColor;
      } else {
        maleColorCard = inactiveCardColor;
      }
    }

    if (gender == 2) {
      if (femaleColorCard == inactiveCardColor) {
        femaleColorCard = activeCardColor;
        maleColorCard = inactiveCardColor;
      } else {
        femaleColorCard = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    color: maleColorCard,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    color: femaleColorCard,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: activeCardColor,
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
          ]),
        ),
        Container(
          color: Color(RED),
          margin: EdgeInsets.only(top: BOTTOM_BUTTON_TOP_MARGIN),
          width: double.infinity,
          height: BOTTOM_CONTAINER_HEIGHT,
        )
      ]),
    );
  }
}
