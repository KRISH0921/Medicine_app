import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 65.h),
              child: Center(
                  child: Image.asset(
                "assets/images/Welcome.png",
                height: 218.h,
                width: 293.h,
              )),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 65.h),
              child: Text(
                "Welcome to Find",
                style: TextStyle(
                    color: primaryBlack, fontFamily: "Playfair", fontSize: 28.sp),
              ),
            ),
            Text(
              "Medicine",
              style: TextStyle(
                  color: primaryBlack, fontFamily: "Playfair", fontSize: 28.sp),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 16.h),
              child: Text(
                "Save big on your prescriptions by",
                style: TextStyle(
                    color: primaryBlack, fontFamily: "Poppins", fontSize: 16.sp),
              ),
            ),
            Text(
              "comparing prices, using FREE coupons,",
              style: TextStyle(
                  color: primaryBlack, fontFamily: "Poppins", fontSize: 16.sp),
            ),
            Text(
              "and getting up to 80% off.",
              style: TextStyle(
                  color: primaryBlack, fontFamily: "Poppins", fontSize: 16.sp),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 24.h),
              child: Text(
                "By using the mobile app, you consent to our",
                style: TextStyle(
                    color: primarySteel, fontFamily: "Poppins", fontSize: 14.sp),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Terms",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: " of Use and",
                      style: TextStyle(color: primarySteel, fontSize: 14.sp),
                    ),
                    TextSpan(
                      text: " Privacy Policy.",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
              child: GestureDetector(
                child: Container(
                  height: 50.h,
                  child: Center(
                    child: Text(
                      "Create your free account",
                      style: TextStyle(
                          color: primaryWhite,
                          fontFamily: "PoppinsMedium",
                          fontSize: 16.sp),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "login");
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: 16.h,
                left: 20.h,
                right: 20.h,
              ),
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: primaryGrey500),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: GestureDetector(
                  child: Center(
                    child: Text(
                      "No, Thanks",
                      style: TextStyle(
                          color: primaryBlack,
                          fontFamily: "PoppinsMedium",
                          fontSize: 16.sp),
                    ),
                  ),
                  onTap: () {},
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
