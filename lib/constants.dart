import 'package:flutter/material.dart';

const primaryColor = Color(0xff0A0E22);
const accentColor = Color(0xff1D1F33);
const inactiveColor = Color(0xff1D1FDF);
const pink = Color(0xffEB1455);

enum Gender { MALE, FEMALE }

enum Operation { ADD, SUB }

TextStyle cardText() => TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff8d8e98));

TextStyle bigText() => TextStyle(
    fontSize: 40, color: Color(0xffffffff), fontWeight: FontWeight.bold);
