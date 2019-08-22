import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';


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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                       selectedGender = Gender.male; 
                      });
                    },
                    selectedColor: selectedGender == Gender.male 
                                  ? cardColor 
                                  : inactiveCardColor,
                    cardChild: CardChildWidget(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                       selectedGender = Gender.female; 
                      });
                    },
                    selectedColor: selectedGender == Gender.female ? cardColor : inactiveCardColor,
                    cardChild: CardChildWidget(
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
              selectedColor: cardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: bigTextStyle,
                      ),
                      Text(
                        'CM',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 250.0,
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.round();
                      });
                      
                    },
                    ),
                  ),
                  
                ],
              ),
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
          new BottomButton(buttonTittle: 'CALCULATE', onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ResultsPage();
              }
            ),
            );
          },
          ),
        ],
      ),
    );
  }
}







