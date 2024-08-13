import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

import '../../components/global_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtPassword = TextEditingController();

  var txtKey = GlobalKey<FormState>();

  bool show = true;
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: txtKey,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 16.h, right: 20.h),
                  child: GestureDetector(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        "assets/images/cros.svg",
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:
                         EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                    child: Text(
                      "Log in",
                      style: TextStyle(fontFamily: "Playfair", fontSize: 28.sp),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:
                         EdgeInsets.only(top: 16.h, left: 20.h, right: 20.h),
                    child: Text(
                      "Please log in to your Find Medicine\naccount",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 16.h),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 20.h, left: 20.h, right: 20.h),
                  child: SizedBox(
                    height: 56.h,
                    width: double.infinity.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primarySteel),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: primarySteel),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        hintText: "Email address",
                        hintStyle: TextStyle(
                            color: primarySteel,
                            fontFamily: "Poppins",
                            fontSize: 12.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 20.h, left: 20.h, right: 20.h),
                  child: TextFormField(
                    controller: txtPassword,
                    validator: (value) {
                      if (value == "") {
                        return "Please enter valid password";
                      }
                      if (txtPassword.text.length <= 7) {
                        return "Please enter max 8 digit password";
                      }
                    },
                    obscureText: show,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryGrey300),
                          borderRadius: BorderRadius.all(Radius.circular(10.r))),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryGrey300),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryGrey300),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      contentPadding: EdgeInsets.all(16.h),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: primarySteel,
                          fontFamily: "Poppins",
                          fontSize: 16.sp),
                      suffixIcon: IconButton(
                        icon: Icon(show == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        color: primarySteel,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h, left: 52.h),
                      child: Text(
                        "Remeber Me",
                        style: TextStyle(
                            color: primaryGrey900,
                            fontFamily: "Poppins",
                            fontSize: 16.sp),
                      ),
                    ),
                    Padding(
                      padding:
                           EdgeInsets.only(top: 20.h, left: 40.h, right: 20.h),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: "Poppins",
                            fontSize: 16.sp,
                            decoration: TextDecoration.underline,
                            decorationColor: primaryColor),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 20.h, right: 20.h),
                  child: CustomButton(
                    name: "Login",
                    onTap: () {
                      if (txtKey.currentState!.validate()) {
                        Navigator.pushNamed(context, "login");
                      }
                    },
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 16.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                              color: primarySteel,
                              fontSize: 16.sp,
                              fontFamily: 'Poppins'),
                        ),
                        TextSpan(
                          text: "Create Account",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "PoppinsMedium",
                              fontSize: 16.sp,
                              decorationColor: primaryColor,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "signup");
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 40.h),
                  child: Text(
                    "or log in with",
                    style: TextStyle(
                        color: primaryBlack,
                        fontFamily: "PoppinsMedium",
                        fontSize: 15.sp),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding:  EdgeInsets.only(top: 24.h),
                        child: SvgPicture.asset("assets/images/Facebook.svg"),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding:  EdgeInsets.only(top: 24.h, left: 24.h),
                        child: SvgPicture.asset("assets/images/Gmail.svg"),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding:  EdgeInsets.only(top: 24.h, left: 24.h),
                        child: SvgPicture.asset("assets/images/Apple.svg"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
