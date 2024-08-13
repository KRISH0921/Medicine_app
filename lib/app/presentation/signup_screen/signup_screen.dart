import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            key: txtKey,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 16.h,right: 20.h),
                child: GestureDetector(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      "assets/images/cros.svg",
                      color: primaryEbonyclay,
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
                  padding:  EdgeInsets.only(top: 24.h, left: 20.h),
                  child: Text(
                    "Step 1 of 2",
                    style: TextStyle(
                        color: primarySteel,
                        fontFamily: "Poppins",
                        fontSize: 14.sp),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: primaryBlack,
                        fontFamily: "Playfair",
                        fontSize: 28.sp),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(top: 16.h, left: 20.h),
                  child: Text(
                    "Stay updated on the latest prescription\ndeals, savings, and news with convenient\nprice alerts.",
                    style: TextStyle(
                        color: primaryBlack,
                        fontFamily: "Poppins",
                        fontSize: 16.sp),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(top: 16.h, left: 20.h),
                  child: Text(
                    "Already have a Find Medicine ",
                    style: TextStyle(
                        color: primaryBlack,
                        fontFamily: "Poppins",
                        fontSize: 16.sp),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 20.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Account? ",
                          style: TextStyle(
                              color: primaryBlack,
                              fontFamily: "Poppins",
                              fontSize: 16.sp),
                        ),
                        TextSpan(
                          text: "Log in",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "Poppins",
                              fontSize: 16.sp,
                              decoration: TextDecoration.underline,
                              decorationColor: primaryColor),
                          recognizer: TapGestureRecognizer()..onTap = (){
                            Navigator.pushNamed(context, "login");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                child: SizedBox(
                  height: 56.h,
                  width: double.infinity.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primarySteel),
                          borderRadius: BorderRadius.all(Radius.circular(10.r))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primarySteel),
                          borderRadius: BorderRadius.all(Radius.circular(10.r))),
                      contentPadding: EdgeInsets.all(16.h),
                      hintText: "Email address",
                      hintStyle: TextStyle(
                          color: primarySteel,
                          fontFamily: "Poppins",
                          fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 20.h, top: 32.h, right: 20.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "By continuing, you agree to Find Medicine",
                    style: TextStyle(
                      color: primarySteel,
                      fontFamily: "Poppins",
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 20.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Terms ",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16.sp,
                              fontFamily: 'PoppinsMedium',
                              decoration: TextDecoration.underline,
                              decorationColor: primaryColor),
                        ),
                        TextSpan(
                          text: "of Use and ",
                          style: TextStyle(
                              color: primarySteel,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins'),
                        ),
                        TextSpan(
                          text: "Privacy Policy.",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16.sp,
                              fontFamily: 'PoppinsMedium',
                              decoration: TextDecoration.underline,
                              decorationColor: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 150.h, left: 20.h, right: 20.h),
                child: CustomButton(
                  name: "Next",
                  onTap: () {
                      Navigator.pushNamed(context, "one");
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                    top: 16.h, left: 20.h, right: 20.h,),
                child: Container(
                  height: 50.h,
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Use my mobile phone number",
                        style: TextStyle(
                            color: primaryBlack,
                            fontFamily: "PoppinsMedium",
                            fontSize: 16.sp),
                      ),
                    ),
                    onTap: () {},
                  ),
                  decoration: BoxDecoration(
                    color: primaryWhite,
                    border: Border.all(color: primaryGrey500),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
