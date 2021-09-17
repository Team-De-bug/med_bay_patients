import 'package:flutter/material.dart';
import 'package:med_bay_patients/constants.dart';
import 'package:med_bay_patients/services/prescription.dart';

class PrescriptionScreen extends StatefulWidget {
  static const String id = 'prescription_screen';

  PrescriptionScreen({required this.prescData});

  final prescData;

  @override
  _PrescriptionScreenState createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  PrescriptionModel prescription = PrescriptionModel();

  late int id;
  late String status;
  late String bill;
  late int caseNo;

  void updateUI(dynamic prescData) {
    setState(() {
      if (prescData == null) {
        id = 0;
        status = 'Error';
        bill = 'null';
        caseNo = 0;
        return;
      }
      id = prescData['id'];
      status = prescData['status'];
      bill = prescData['bill'];
      caseNo = prescData['case'];
    });
  }

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
