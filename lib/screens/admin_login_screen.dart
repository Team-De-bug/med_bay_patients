import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:med_bay_patients/components/rounded_button.dart';
import 'package:med_bay_patients/constants.dart';
import 'package:med_bay_patients/screens/settings_screen.dart';

class AdminLoginScreen extends StatefulWidget {
  static const String id = 'admin_login_screen';

  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  String admin = 'Admin';
  String adminPass = 'Admin!23';
  String userName = '';
  String userPass = '';
  bool isAdmin = false;
  bool isAdminPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 4.5,
          ),
          child: Image.asset(
            "images/med_bay.png",
            fit: BoxFit.contain,
            height: 72,
          ),
        ),
        backgroundColor: kDRed,
      ),
      backgroundColor: Color(0xffe00043),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  userName = value;
                },
                decoration: kTextInputStyle.copyWith(
                  hintText: 'User Name',
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  userPass = value;
                },
                decoration: kTextInputStyle.copyWith(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButton(
                title: 'Login',
                color: kDRed,
                onPressed: () {
                  if (userName == admin && userPass == adminPass) {
                    Navigator.pushNamed(context, SettingsScreen.id);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
