import 'package:flutter/material.dart';

const double iconSize = 90.0;
const sizedBoxHeight = 15.0;

class CardChild extends StatelessWidget {
  final IconData icon;
  final String label;

  CardChild({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);
