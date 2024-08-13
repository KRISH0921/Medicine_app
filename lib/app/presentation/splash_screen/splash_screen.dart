import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:medicine_app/app/utils/utils_pref.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isIntro = false;

  @override
  void initState() {
    super.initState();
    getData();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.popAndPushNamed(context, isIntro == true ? "welcome" : "intro" );
      },
    );
  }

  Future<void> getData() async {
    UtilsPref prefUtil = UtilsPref();
    isIntro = await prefUtil.getLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryWhite,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/splash.png",
              fit: BoxFit.fill,
              width: double.infinity.h,
            ),
            Center(
              child: Image.asset(
                "assets/images/Logo.png",
                width: 288.h,
                height: 60.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
