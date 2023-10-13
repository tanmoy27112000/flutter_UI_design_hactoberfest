import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
    fontFamily: 'Spartan MB', fontSize: 80.0, color: Color(0xffFFFFFF));

const kMessageTextStyle = TextStyle(
    fontFamily: 'Spartan MB', fontSize: 60.0, color: Color(0xFFFFFFFF));

const kButtonTextStyle = TextStyle(
    fontSize: 30.0, fontFamily: 'Spartan MB', color: Color(0xFF000000));

const kConditionTextStyle =
    TextStyle(fontSize: 100.0, color: Color(0xFFFFFFFF));

const KtextFeildInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.black,
  icon: Icon(
    Icons.location_city,
    color: Colors.black,
  ),
  hintText: 'Enter city Name',
  hintStyle: TextStyle(
    color: Colors.white,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
