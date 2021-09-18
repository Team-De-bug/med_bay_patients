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

  Map<int, dynamic> dataDict = {};
  // var sNo = [];
  // var medicine = [];
  var quantity = [];

  @override
  void initState() {
    super.initState();
    updateUI(widget.prescData);
  }

  void updateUI(dynamic prescData) {
    setState(() {
      for (int i = 0; i < prescData.length; i++) {
        var name = prescData[i]['item']['name'].toString();
        var qty = prescData[i]['quantity'].toString();
        dataDict[i + 1] = {"name": name, "qty": qty};
      }
      print(dataDict);
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.black,
                ),
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'S.No',
                        style: kDataTextStyle,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Medicine',
                        style: kDataTextStyle,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Qty.',
                        style: kDataTextStyle,
                      ),
                    ),
                  ],
                  rows: dataDict.entries
                      .map(
                        (e) => DataRow(
                          cells: [
                            DataCell(
                              Text(
                                e.key.toString(),
                                style: kDataTextStyle,
                              ),
                            ),
                            DataCell(
                              Text(
                                e.value['name'],
                                style: kDataTextStyle,
                              ),
                            ),
                            DataCell(
                              Text(
                                e.value['qty'].toString(),
                                style: kDataTextStyle,
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
