import 'package:flutter/material.dart';
import 'package:med_bay_patients/constants.dart';

class AppTheme {
  get darkTheme => ThemeData(
        primaryColor: kRed,
        appBarTheme: AppBarTheme(color: kDRed),
        // ignore: deprecated_member_use
        accentColor: kDRed,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.white),
        ),
        brightness: Brightness.dark,
        canvasColor: Colors.grey[200],
      );

  get lightTheme => ThemeData(
        primaryColor: kBaseBlueDarkM,
        appBarTheme: AppBarTheme(color: kBaseBlueDarkM),
        // ignore: deprecated_member_use
        accentColor: kRedDarkM,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.white),
        ),
        canvasColor: Colors.white,
        brightness: Brightness.light,
      );
}
