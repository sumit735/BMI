import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomConatinerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                       selectedGender = Gender.male; 
                      });
                    },
                    child: ReusableCard(
                      selectedColor: selectedGender == Gender.male 
                                    ? cardColor 
                                    : inactiveCardColor,
                      cardChild: CardChildWidget(
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
                         selectedGender = Gender.female; 
                        });
                      },
                      child: ReusableCard(
                      selectedColor: selectedGender == Gender.female ? cardColor : inactiveCardColor,
                      cardChild: CardChildWidget(
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
              selectedColor: cardColor,
            ),
          ),
          
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    selectedColor: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedColor: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
             color: bottomConatinerColor,
             margin: EdgeInsets.only(top: 10.0),
             width: double.infinity,
             height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}





