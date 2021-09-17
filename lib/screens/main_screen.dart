import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:med_bay_patients/components/navigation_drawer_widget.dart';
import 'package:med_bay_patients/components/rounded_button.dart';
import 'package:med_bay_patients/constants.dart';
import 'package:med_bay_patients/screens/loading_screen.dart';
import 'package:med_bay_patients/services/location.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Future<dynamic> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerwidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.notesMedical),
        backgroundColor: kRed,
        onPressed: () {
          Navigator.pushNamed(context, LoadingScreen.id);
        },
      ),
      backgroundColor: Colors.white,
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 55),
          child: Column(
            children: <Widget>[
              Text(
                'Declare Emergency',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontSize: 32.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              RoundedButton(
                title: 'EMERGENCY',
                color: kRed,
                fontSize: 32.0,
                height: 64,
                onPressed: () {
                  // ignore: todo
                  print('Button: Emegency');
                  getLocation(); //TODO: api key connection needed
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
