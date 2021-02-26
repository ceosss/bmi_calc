import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget child;
  final Color color;
  InputCard({this.child, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
