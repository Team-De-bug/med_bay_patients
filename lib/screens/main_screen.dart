import 'package:flutter/material.dart';
import 'package:med_bay_patients/components/navigation_drawer_widget.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerwidget(),
      backgroundColor: Color(0xffe00043),
      appBar: AppBar(
        title: Text('Med-Bay'),
        backgroundColor: Color(0xffB30035),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Declare Emergency')
          ],
        ),
      ),
    );
  }
}
