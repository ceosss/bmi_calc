import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderData extends StatelessWidget {
  IconData icon;
  String gender;

  GenderData({Gender gender}) {
    this.gender = gender == Gender.MALE ? "Male" : "Female";
    icon =
        gender == Gender.MALE ? FontAwesomeIcons.mars : FontAwesomeIcons.venus;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender.toString().toUpperCase(),
          style: cardText().copyWith(color: Color(0xffffffff)),
        ),
      ],
    );
  }
}
