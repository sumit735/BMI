import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  
  ReusableCard({@required this.selectedColor, this.cardChild, this.onPress});

  final Color selectedColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
