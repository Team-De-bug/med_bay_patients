import 'package:med_bay_patients/services/networking.dart';

const int patientId = 16;

class PrescriptionModel {
  Future<dynamic> getPrescription(String name) async {
    NetworkHelper networkHelper = NetworkHelper(
        'http://10.0.2.2:8000/api/last-pres?patient_id=$patientId');

    var prescriptionData = await networkHelper.getData();
    return prescriptionData;
  }
}
