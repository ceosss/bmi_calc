import 'package:flutter/material.dart';
import 'constants.dart';

class InputCard extends StatelessWidget {
  final Widget child;
  InputCard({this.child});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: accentColor, borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}
