import 'package:flutter/material.dart';
import 'package:med_bay_patients/components/rounded_button.dart';
import 'package:med_bay_patients/constants.dart';
import 'package:med_bay_patients/screens/settings_screen.dart';

final userTextController = TextEditingController();
final userPassTextController = TextEditingController();

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
      resizeToAvoidBottomInset: false,
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: MediaQuery.of(context).size.height / 8,
              bottom: MediaQuery.of(context).size.height / 6,
            ),
            child: Material(
              color: kBaseBlue,
              borderRadius: BorderRadius.circular(16.0),
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    color: kDBlue,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 10,
                      child: Center(
                        child: Text(
                          'Admin Login',
                          style: kAboutTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        TextField(
                          keyboardType: TextInputType.name,
                          controller: userTextController,
                          onChanged: (value) {
                            userName = value;
                          },
                          decoration: kTextInputStyle.copyWith(
                            hintText: 'User Name',
                            // icon: FaIcon(
                            //   FontAwesomeIcons.user,
                            //   color: Colors.white,
                            // ),
                          ),
                          style: kTextFieldTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          controller: userPassTextController,
                          onChanged: (value) {
                            userPass = value;
                          },
                          decoration: kTextInputStyle.copyWith(
                            hintText: 'Password',
                            // icon: Icon(
                            //   Icons.password,
                            //   color: Colors.white,
                            // ),
                          ),
                          style: kTextFieldTextStyle,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        RoundedButton(
                          title: 'Login',
                          color: kDBlue,
                          onPressed: () {
                            if (userName == admin && userPass == adminPass) {
                              Navigator.pushNamed(context, SettingsScreen.id);
                              userTextController.clear();
                              userPassTextController.clear();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
