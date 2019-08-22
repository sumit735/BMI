import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                 'Your Result', 
                 style: ktextStyle,
                )
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              selectedColor: cardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),

                  Text(
                    '18.3',
                    style: bmiTextStyle,
                  ),

                  Text(
                    'Your bmi result is very low, you should eat more',
                    textAlign: TextAlign.center,
                    style: bodyTextStyle,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}