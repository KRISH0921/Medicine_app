
import 'package:flutter/material.dart';
import 'package:medicine_app/app/presentation/pharmacy_search_screen/model/pharmact_search_model.dart';

class PharmacySearchProvider extends ChangeNotifier {


  List<PharmacySearchModel> medicineList = <PharmacySearchModel>[
    PharmacySearchModel(subTitle: "Safeway",name: "298 King St\nSan Francisco 94107\n0.41 mi"),
    PharmacySearchModel(subTitle: "Target (CVS)",name: "298 King St\nSan Francisco 94107\n0.41 mi"),
    PharmacySearchModel(subTitle: "Safeway",name: "298 King St\nSan Francisco 94107\n0.41 mi"),
    PharmacySearchModel(subTitle: "Safeway",name: "298 King St\nSan Francisco 94107\n0.41 mi"),
    PharmacySearchModel(subTitle: "Safeway",name: "298 King St\nSan Francisco 94107\n0.41 mi"),

  ];

}