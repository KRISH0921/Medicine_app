import 'package:flutter/material.dart';
import 'package:medicine_app/app/presentation/intro_screen/model/intro_model.dart';

class IntroProvider extends ChangeNotifier {

  List<IntroModel> dataList = <IntroModel>[
    IntroModel(
        title: "Unlock exclusive benefits with Your Gold membership.",
        subTitle:
            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod ",
        image: "assets/images/Find Medicine Gold.png"),
    IntroModel(
        title: "Enjoy unbeatable value with our Lower prices.",
        subTitle:
            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod",
        image: "assets/images/one.png"),
    IntroModel(
        title: "Tailor your experience with our Flexible plan options.",
        subTitle:
            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
        image: "assets/images/two.png"),
    IntroModel(
        title: "Start saving today with Instant savings.",
        subTitle:
            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod Lorem \nipsum dolor sit amet, ",
        image: "assets/images/three.png"),
  ];

  int change = 0;
  void colorChange(int value) {
    change = value;
    notifyListeners();
  }
}
