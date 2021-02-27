import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => print("HEY"),
      color: primaryColor,
      child: Icon(
        FontAwesomeIcons.plus,
      ),
      shape: CircleBorder(),
      padding: EdgeInsets.all(15),
      splashColor: pink,
    );
  }
}
