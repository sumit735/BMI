import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  
  ReusableCard({@required this.selectedColor, this.cardChild});

  final Color selectedColor;

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: selectedColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}