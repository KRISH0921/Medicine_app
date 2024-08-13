import 'package:flutter/widgets.dart';

class SignupScreenTwoProvider extends ChangeNotifier {
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtApt = TextEditingController();
  TextEditingController txtCity = TextEditingController();
  TextEditingController txtState = TextEditingController();
  TextEditingController txtZipCode = TextEditingController();

  void controllerChange(String value) {
    txtAddress.text =  value;
    notifyListeners();

  }

  void controllerChangeCity(String valueCity) {
    txtCity.text =  valueCity;
    notifyListeners();
  }

  void controllerChangeState(String valueState) {
    txtState.text =  valueState;
    notifyListeners();
  }

  void controllerChangeZipCode(String valueZipCode) {
    txtZipCode.text =  valueZipCode;
    notifyListeners();
  }

  int change = 0;

  void colorChange(int value) {
    change = value;
    notifyListeners();
  }
  String address = "";
  String apt = "";
  String city = "";
  String sate = "";
  String zipcode = "";
}