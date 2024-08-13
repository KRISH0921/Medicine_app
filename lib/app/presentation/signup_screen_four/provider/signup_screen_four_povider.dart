
import 'package:flutter/material.dart';

class SignupScreenFourProvider extends ChangeNotifier{
  TextEditingController txtCheck = TextEditingController();

  bool show = true;
  bool check = true;

  void change(){
    show = !show;
    notifyListeners();
  }
}