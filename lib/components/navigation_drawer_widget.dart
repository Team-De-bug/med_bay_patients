import 'package:flutter/material.dart';
import 'package:med_bay_patients/components/rounded_button.dart';
import 'package:med_bay_patients/screens/about_screen.dart';
import 'package:med_bay_patients/screens/settings_screen.dart';

class NavigationDrawerwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffe00043),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ClipRect(
                child: Image.asset('images/med_bay.png'),
              ),
              RoundedButton(
                color: Color(0xffB30035),
                title: 'Settings',
                onPressed: () {
                  Navigator.pushNamed(context, SettingsScreen.id);
                },
              ),
              RoundedButton(
                color: Color(0xffB30035),
                title: 'About',
                onPressed: () {
                  Navigator.pushNamed(context, AboutScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
