import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'inputCard.dart';
import 'genderData.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String gender;
  void updateGender(Gender data) {
    setState(() {
      gender = data.toString();
    });
    print(gender);
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => updateGender(Gender.MALE),
                  child: InputCard(
                    child: GenderData(
                      gender: Gender.MALE,
                    ),
                    color:
                        gender == Gender.MALE.toString() ? pink : accentColor,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => updateGender(Gender.FEMALE),
                  child: InputCard(
                    child: GenderData(
                      gender: Gender.FEMALE,
                    ),
                    color:
                        gender == Gender.FEMALE.toString() ? pink : accentColor,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: InputCard(
          color: accentColor,
        )),
        Expanded(
          child: Row(
            children: [InputCard(), InputCard()],
          ),
        ),
      ],
    ));
  }
}
