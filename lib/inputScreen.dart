import 'package:flutter/material.dart';
import 'card.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Expanded(
          child: Row(
            children: [InputCard(), InputCard()],
          ),
        ),
        Expanded(child: InputCard()),
        Expanded(
          child: Row(
            children: [InputCard(), InputCard()],
          ),
        ),
      ],
    ));
  }
}
