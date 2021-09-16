import 'package:flutter/material.dart';
import 'package:med_bay_patients/screens/about_screen.dart';
import 'package:med_bay_patients/screens/main_screen.dart';
import 'package:med_bay_patients/screens/prescription_screen.dart';
import 'package:med_bay_patients/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Med-Bay',
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        PrescriptionScreen.id: (context) => PrescriptionScreen()
      },
    );
  }
}
