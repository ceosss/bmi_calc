import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class BottomBtn extends StatelessWidget {
  final String text;
  final Function onPress;
  BottomBtn({@required this.text, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        color: pink,
      ),
    );
  }
}
