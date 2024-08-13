import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/app/presentation/get_medicine_screen/get_medicine_screen.dart';
import 'package:medicine_app/app/presentation/get_medicine_screen/provider/get_medicine_provider.dart';
import 'package:medicine_app/app/presentation/intro_screen/intro_screen.dart';
import 'package:medicine_app/app/presentation/intro_screen/provider/intro_provider.dart';
import 'package:medicine_app/app/presentation/login_screen/login_screen.dart';
import 'package:medicine_app/app/presentation/pharmacy_details/pharmacy_details.dart';
import 'package:medicine_app/app/presentation/pharmacy_search_screen/pharmacy_search_screen.dart';
import 'package:medicine_app/app/presentation/pharmacy_search_screen/provider/pharmacy_search_provider.dart';
import 'package:medicine_app/app/presentation/signup_screen/signup_screen.dart';
import 'package:medicine_app/app/presentation/signup_screen_five/signup_screen_five.dart';
import 'package:medicine_app/app/presentation/signup_screen_four/provider/signup_screen_four_povider.dart';
import 'package:medicine_app/app/presentation/signup_screen_four/signup_screen_four.dart';
import 'package:medicine_app/app/presentation/signup_screen_three/provider/signup_screen_three_provider.dart';
import 'package:medicine_app/app/presentation/signup_screen_one/signup_screen_one.dart';
import 'package:medicine_app/app/presentation/signup_screen_three/signup_screen_three.dart';
import 'package:medicine_app/app/presentation/signup_screen_two/provider/signup_screen_two_provider.dart';
import 'package:medicine_app/app/presentation/signup_screen_two/signup_screen_two.dart';
import 'package:medicine_app/app/presentation/splash_screen/splash_screen.dart';
import 'package:medicine_app/app/presentation/welcome/welcome.dart';
import 'package:medicine_app/app/presentation/welcome_screen/welcom_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
         ChangeNotifierProvider<IntroProvider>( create: (context) => IntroProvider()),
         ChangeNotifierProvider<SignupScreenTwoProvider>(create: (context) => SignupScreenTwoProvider()),
         ChangeNotifierProvider<SignupScreenThreeProvider>(create: (context) => SignupScreenThreeProvider()),
         ChangeNotifierProvider<SignupScreenFourProvider>(create: (context) => SignupScreenFourProvider()),
         ChangeNotifierProvider<GetMedicineProvider>(create: (context) => GetMedicineProvider()),
         ChangeNotifierProvider<PharmacySearchProvider>(create: (context) => PharmacySearchProvider()),
       ],
      child: ScreenUtilInit(
        designSize: Size(375,812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          routes: <String, WidgetBuilder>{
            "/": (context) => Splash(),
            "intro": (context) => IntroScreen(),
            "welcome": (context) => WelcomeScreen(),
            "login": (context) => LoginScreen(),
            "signup": (context) => SignupScreen(),
            "one": (context) => SignupScreenOne(),
            "two": (context) => SignupScreenTwo(),
            "three": (context) => SignupScreenThree(),
            "four": (context) => SignupScreenFour(),
            "five": (context) => SignupScreenFive(),
            "get": (context) => GetMedicineScreen(),
            "welcome": (context) => Welcome(),
            "pharmacy": (context) => PharmacySearchScreen(),
            "details": (context) => PharmacyDetails(),
          },
        ),
      ),
    );
  }
}
