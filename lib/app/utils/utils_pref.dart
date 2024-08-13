import 'package:shared_preferences/shared_preferences.dart';

class UtilsPref {
  static String isLogin = "login";
  static String isIntro = "intro";

  Future<void> setLogin(bool login) async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setBool(isLogin, login);
  }

  Future<bool> getLogin() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    bool login = shr.getBool(isLogin) ?? false;
    return login;
  }

  Future<void> setIntro(bool intro) async{
    SharedPreferences shr =  await SharedPreferences.getInstance();
    shr.setBool(isIntro, intro);
  }

  Future<bool> getIntro() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    bool intro = shr.getBool(isIntro) ?? false;
    return intro;
  }

}
