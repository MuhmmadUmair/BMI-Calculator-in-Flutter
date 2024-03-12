import 'package:bmi_calculator_2/constants.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kTitleBackgroundColor,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
      home: InputPage(),
    );
  }
}
