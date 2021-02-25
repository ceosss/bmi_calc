import 'package:flutter/material.dart';
import 'constants.dart';

class InputCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(color: accentColor),
      ),
    );
  }
}
