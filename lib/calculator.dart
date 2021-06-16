import 'dart:math';

import 'dart:ui';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30.0) {
      return 'Obesity';
    } else if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Healthy weight';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30.0) {
      return 'You have obesity. you have to cut food and try to exercise more.';
    } else if (_bmi > 25.0) {
      return 'You have a higher than normal body weight. try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Color getColorForMessage() {
    if (_bmi >= 30.0) {
      return Colors.red;
    } else if (_bmi >= 25.0) {
      return Colors.yellow;
    } else if (_bmi > 18.5) {
      return Color(0xFF24D876);
    } else {
      return Colors.yellow;
    }
  }
}
