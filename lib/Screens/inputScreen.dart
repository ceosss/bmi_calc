import 'package:bmi_calc/Components/bottomBtn.dart';
import 'package:bmi_calc/Components/constants.dart';
import 'package:bmi_calc/Helper/bmiCal.dart';
import 'package:flutter/material.dart';
import '../Components/inputCard.dart';
import '../Components/genderData.dart';
import '../Components/roundBtn.dart';
import 'resultScreen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String gender;
  double height = 150.0;
  int weight = 50;
  int age = 18;
  void updateGender(Gender data) {
    setState(() {
      gender = data.toString();
    });
  }

  void updateHeight(Operation ops) {
    setState(() {
      ops == Operation.ADD ? weight++ : weight--;
    });
  }

  void updateAge(Operation ops) {
    setState(() {
      ops == Operation.ADD ? age++ : age--;
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
                      style: bigText(),
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
            children: [
              InputCard(
                  color: accentColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: cardText(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          weight.toString(),
                          style: bigText(),
                        ),
                      ),
                      Row(
                        children: [
                          RoundBtn(
                            ops: Operation.SUB,
                            onPress: () => updateHeight(Operation.SUB),
                          ),
                          RoundBtn(
                            ops: Operation.ADD,
                            onPress: () => updateHeight(Operation.ADD),
                          )
                        ],
                      )
                    ],
                  )),
              InputCard(
                color: accentColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AGE",
                      style: cardText(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        age.toString(),
                        style: bigText(),
                      ),
                    ),
                    Row(
                      children: [
                        RoundBtn(
                            ops: Operation.SUB,
                            onPress: () => updateAge(Operation.SUB)),
                        RoundBtn(
                            ops: Operation.ADD,
                            onPress: () => updateAge(Operation.ADD))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        BottomBtn(
          onPress: () {
            print("object");
            BmiCal bmi = BmiCal(height: height, weight: weight);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultScreen(
                          bmiScore: bmi.getBMI(),
                          resultText: bmi.getResult(),
                          interpretation: bmi.getInterpretation(),
                        )));
          },
          text: "Calculate",
        ),
      ],
    ));
  }
}
