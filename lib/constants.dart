import 'package:flutter/material.dart';

const kAboutTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    fontFamily: 'Rubik');

const kDataTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Rubik',
  fontWeight: FontWeight.bold,
);

const kTextFieldTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Rubik',
  fontSize: 18.0,
);

const kTextInputStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  // icon: FaIcon(
  //   FontAwesomeIcons.user,
  //   color: Colors.white,
  // ),
  hintText: '',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kRed = Color(0xFFE00043);

const kDRed = Color(0xFFB30035);

const kDBlue = Color(0xFF215A82);

const kBaseBlue = Color(0xFF2B82BF);

const kBlueDarkM = Color(0xFF31234E);

const kBaseRedDarkM = Color(0xFF231B31);

const kBaseBlueDarkM = Color(0xFF3E2C61);

const kRedDarkM = Color(0xFF16121B);