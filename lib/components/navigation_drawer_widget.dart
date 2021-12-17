import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_bay_patients/components/rounded_button.dart';
import 'package:med_bay_patients/constants.dart';
import 'package:med_bay_patients/screens/about_screen.dart';
import 'package:med_bay_patients/screens/admin_login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class NavigationDrawerwidget extends StatefulWidget {
  @override
  State<NavigationDrawerwidget> createState() => _NavigationDrawerwidgetState();
}

class _NavigationDrawerwidgetState extends State<NavigationDrawerwidget> {
  bool isDark = false;

  @override
  void initState() {
    super.initState();
    getBoolValuesSF();
  }

  getBoolValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return bool
    isDark = prefs.getBool('darkMode') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: isDark ? kBaseBlueDarkM : kRed,
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
                color: isDark ? kBlueDarkM : kDRed,
                title: 'Settings',
                fontSize: 16.0,
                onPressed: () {
                  Navigator.popAndPushNamed(context, AdminLoginScreen.id);
                },
              ),
              RoundedButton(
                color: isDark ? kBlueDarkM : kDRed,
                title: 'About',
                fontSize: 16.0,
                onPressed: () {
                  Navigator.popAndPushNamed(context, AboutScreen.id);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.5,
                    left: MediaQuery.of(context).size.width / 4.5),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Dark Mode',
                      style: kAboutTextStyle,
                    ),
                    Switch(
                      value: isDark,
                      onChanged: (value) async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        setState(() {
                          isDark = value;
                        });
                        if (isDark == false) {
                          Get.changeThemeMode(ThemeMode.dark);
                          prefs.setBool('isDark', true);
                        } else if (isDark == true) {
                          Get.changeThemeMode(ThemeMode.light);
                          prefs.setBool('isDark', false);
                        }
                      },
                      thumbColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      trackColor: MaterialStateProperty.all<Color>(
                          isDark ? kBlueDarkM : kDRed),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
