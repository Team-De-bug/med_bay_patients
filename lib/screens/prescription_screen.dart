import 'package:flutter/material.dart';
import 'package:med_bay_patients/constants.dart';

class PrescriptionScreen extends StatefulWidget {
  static const String id = 'prescription_screen';

  @override
  _PrescriptionScreenState createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Med-Bay'),
        backgroundColor: kDRed,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
