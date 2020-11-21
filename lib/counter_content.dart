import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'rounded_icon_button.dart';

class CounterContent extends StatelessWidget {
  final String title;
  final int value;
  final Function onChanged;

  CounterContent({@required this.title, @required this.value, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kTitleTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                onChanged(value - 1);
              },
            ),
            SizedBox(width: 10.0),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                onChanged(value + 1);
              },
            ),
          ],
        )
      ],
    );
  }
}
