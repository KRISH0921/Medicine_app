import 'package:flutter/material.dart';
import 'package:medicine_app/app/presentation/signup_screen_three/model/signup_screen_three_model.dart';

class SignupScreenThreeProvider extends ChangeNotifier{
  TextEditingController txtCheck = TextEditingController();


  int? gold;

  void change(int value){
    gold = value;
    notifyListeners();
   }

   List<SignupScreenThreeModel> planList = <SignupScreenThreeModel>[
     SignupScreenThreeModel(name: "Individual",price: "\$ 0.00*",subName: "1 person",removePrice: "\$ 50.99*"),
     SignupScreenThreeModel(name: "Family",price: "\$ 0.00*",subName: "Up to 6 people (or pets)",removePrice: "\$ 9.99*"),

   ];
  }