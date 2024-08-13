import 'package:flutter/material.dart';
import 'package:medicine_app/app/presentation/get_medicine_screen/model/get_medicine_model.dart';

class GetMedicineProvider extends ChangeNotifier{
  bool check = true;

  void change() {
    check = !check;
    notifyListeners();
  }

  List<GetMedicineModel> getList = <GetMedicineModel>[
    GetMedicineModel(title: "Member benefits"),
    GetMedicineModel(title: "Member benefits\nprescription on average"),
    GetMedicineModel(title: "1,000+ prescriptions for\nunder 10\$"),
    GetMedicineModel(title: "Free home delivery of\nyour prescriptions"),
    GetMedicineModel(title: "Works even\nwithout insurance"),
  ];
}

