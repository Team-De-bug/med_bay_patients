import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:med_bay_patients/constants.dart';

class AboutScreen extends StatefulWidget {
  static const String id = 'about_screen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Color(0xffe00043),
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Color(0xffB30035),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_left),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 60),
          child: Column(
            children: <Widget>[
              Text(
                'ABOUT',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24.0,
                  fontFamily: 'Rubik',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Material(
                borderRadius: BorderRadius.circular(16.0),
                color: Color(0xffB30035),
                child: Container(
                  height: 400,
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Back End Developers',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Marudhu Paandian',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'K.A.Shabesa',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Front End Developer',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Rishi Menon',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Mobile Application Developer',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'K.A.Shabesa',
                        style: kAboutTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white,
                        child: Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _launchURL(
                                        'https://www.linkedin.com/company/79782691/');
                                  });
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.blue,
                                  size: 32,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _launchURL(
                                        'https://github.com/Team-De-bug');
                                  });
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.github,
                                  color: Colors.black,
                                  size: 32,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Material(
                child: Container(
                  height: 100,
                  width: 225,
                  child: Image.asset('images/teamdebug_transparent.png'),
                ),
                color: Color(0xffB30035),
                borderRadius: BorderRadius.circular(16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
}
