import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:med_bay_patients/constants.dart';
import 'package:med_bay_patients/screens/prescription_screen.dart';
import 'package:med_bay_patients/services/prescription.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'location_screen';

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getPrescData();
  }

  void getPrescData() async {
    var prescriptionData = await PrescriptionModel().getPrescription('you');

    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PrescriptionScreen(
        prescData: prescriptionData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRed,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
