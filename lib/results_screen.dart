import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(
      {@required this.bmiValue,
      @required this.message,
      @required this.interpretation,
      @required this.colour});

  final String bmiValue;
  final String message;
  final String interpretation;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: textStyleResults,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: colour,
                    ),
                  ),
                  Text(
                    bmiValue,
                    style: bmiresult,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: bodyresult,
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
