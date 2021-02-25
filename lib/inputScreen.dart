import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'inputCard.dart';
import 'genderData.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Expanded(
          child: Row(
            children: [
              InputCard(
                child: GenderData(
                  gender: Gender.MALE,
                ),
              ),
              InputCard(
                child: GenderData(
                  gender: Gender.FEMALE,
                ),
              )
            ],
          ),
        ),
        Expanded(child: InputCard()),
        Expanded(
          child: Row(
            children: [InputCard(), InputCard()],
          ),
        ),
      ],
    ));
  }
}
