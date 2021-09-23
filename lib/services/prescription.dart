import 'package:med_bay_patients/services/networking.dart';

class PrescriptionModel {
  Future<dynamic> getPrescription(int id) async {
    NetworkHelper networkHelper = NetworkHelper(
        'http://10.0.2.2:8000/api/last-pres?patient_id=$id');

    var prescriptionData = await networkHelper.getData();
    return prescriptionData;
  }
}
