import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'card_content.dart';

const int BLACK = 0xFF1D1E33;
const int RED = 0xFFEB1555;
const double BOTTOM_BUTTON_TOP_MARGIN = 10.00;
const double BOTTOM_CONTAINER_HEIGHT = 80.00;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(
                  color: Color(BLACK),
                  childCard: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Color(BLACK),
                  childCard: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: Color(BLACK),
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                color: Color(BLACK),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: Color(BLACK),
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
