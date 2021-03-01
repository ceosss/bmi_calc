import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundBtn extends StatelessWidget {
  final Operation ops;
  final Function onPress;
  RoundBtn({@required this.ops, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: primaryColor,
      child: Icon(
        ops == Operation.ADD ? FontAwesomeIcons.plus : FontAwesomeIcons.minus,
      ),
      shape: CircleBorder(),
      padding: EdgeInsets.all(15),
      splashColor: pink,
    );
  }
}
