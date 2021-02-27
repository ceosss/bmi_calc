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
  double height = 150.0;
  void updateGender(Gender data) {
    setState(() {
      gender = data.toString();
    });
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HEIGHT",
                style: cardText(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toStringAsFixed(0),
                      style: cardText()
                          .copyWith(fontSize: 40, color: Color(0xffffffff)),
                    ),
                    Text(
                      "cm",
                      style: cardText().copyWith(fontSize: 20),
                    )
                  ],
                ),
              ),
              SliderTheme(
                data: SliderThemeData(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  activeTrackColor: Color(0xffffffff),
                  inactiveTrackColor: Color(0xffc3c3c3),
                  thumbColor: pink,
                  trackHeight: 2,
                  overlayColor: pink.withOpacity(0.25),
                ),
                child: Slider(
                    value: height,
                    min: 110,
                    max: 210,
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                      });
                    }),
              )
            ],
          ),
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
