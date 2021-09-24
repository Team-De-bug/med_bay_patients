import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kAboutTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    fontFamily: 'Rubik');

const kRed = Color(0xffe00043);

const kDRed = Color(0xffB30035);

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

const kDBlue = Color(0xFF215A82);

const KDBlueActive = Color(0xFF889CAA);

const kBaseBlue = Color(0xFF2B82BF);

const kTextInputStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: FaIcon(
    FontAwesomeIcons.user,
    color: Colors.white,
  ),
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
