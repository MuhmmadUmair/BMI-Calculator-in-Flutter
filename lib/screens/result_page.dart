import 'package:bmi_calculator_2/components/bottom_button.dart';
import 'package:bmi_calculator_2/constants.dart';
import 'package:bmi_calculator_2/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.bmiSuggestion,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String bmiSuggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTitleBackgroundColor,
        title: Center(
          child: Text(
            "BMI CALCULATOR",
            style: kTitleTextStyle,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              colour: kActivecardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toLowerCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    bmiSuggestion,
                    style: kResultBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
