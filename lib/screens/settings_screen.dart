import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = 'settings_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe00043),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value) {
                userName = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
