import 'package:flutter/material.dart';
import 'package:med_bay_patients/constants.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = 'settings_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRed,
      appBar: AppBar(
        backgroundColor: kRed,
      ),
    );
  }
}
