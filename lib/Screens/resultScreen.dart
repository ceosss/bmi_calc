import 'package:bmi_calc/Components/constants.dart';
import 'package:bmi_calc/Components/inputCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/Components/bottomBtn.dart';

class ResultScreen extends StatelessWidget {
  final double bmiScore;
  final String resultText;
  final String interpretation;

  ResultScreen({this.bmiScore, this.interpretation, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI - CALC"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "Your Result",
                style: cardText().copyWith(color: Color(0xffffffff)),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20),
            ),
            Expanded(
              child: InputCard(
                color: accentColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: cardText().copyWith(color: Colors.green[300]),
                      ),
                      Text(
                        bmiScore.toString(),
                        style: bigText().copyWith(fontSize: 70),
                      ),
                      Text(
                        interpretation,
                        style: cardText(),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            BottomBtn(text: "Re-Calculate My BMI", onPress: null),
          ],
        ),
      ),
    );
  }
}
