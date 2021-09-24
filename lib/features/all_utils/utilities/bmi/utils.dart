import 'dart:math';

import 'dart:ui';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final int? height;
  final int? weight;

  late double _bmi;

  CalculatorBrain({this.height, this.weight}) {
    calculateBMI();
  }

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  Color getColorResult() {
    if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi > 18.5) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You should eat more!';
    }
  }
}

const double kBottomContainerHeight = 80.0;

const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);

enum Gender {
  Male,
  Female,
}
