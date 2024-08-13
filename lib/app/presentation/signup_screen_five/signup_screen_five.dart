import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/gloabel_text.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:pinput/pinput.dart';

class SignupScreenFive extends StatefulWidget {
  const SignupScreenFive({super.key});

  @override
  State<SignupScreenFive> createState() => _SignupScreenFiveState();
}

class _SignupScreenFiveState extends State<SignupScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60.h, left: 20.h),
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        "assets/images/Back icon.svg",
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.h, right: 26.h),
                    child: GestureDetector(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          "assets/images/cros.svg",
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 20.h),
                  child: Text(
                    "Step 5 of 5",
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
                  padding: EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                  child: Text(
                    "One Last Step! Please check your email.",
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
                  padding: EdgeInsets.only(top: 16.h, left: 20.h, right: 20),
                  child: Text(
                    "Enter the 6-digit code from the email we just sent to proceed.\n",
                    style: TextStyle(
                        color: primaryEbonyclay,
                        fontFamily: "Poppins",
                        fontSize: 16.sp),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 20.h),
                  child: Text(
                    "example2042@gmail.com",
                    style: TextStyle(
                        color: primaryEbonyclay,
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 16.sp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h, left: 20.h),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    length: 6,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                child: CustomButton(
                  name: "Verify",
                  onTap: () {
                    Navigator.pushNamed(context, "get");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                  left: 20.h,
                  right: 20.h,
                ),
                child: GestureDetector(
                  child: Container(
                    height: 50.h,
                    child: Center(
                      child: Text(
                        "Resend code",
                        style: TextStyle(
                            color: primaryEbonyclay,
                            fontFamily: "PoppinsMedium",
                            fontSize: 16.sp),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: primaryWhite,
                      border: Border.all(color: primaryGrey500),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Container(
                              height: 206,
                              width: 335,
                              child: Column(
                                children: [
                                  Text(
                                    "Error\n",
                                    style: TextStyle(
                                        fontFamily: "PoppinsSemiBold",
                                        fontSize: 16.sp,
                                        color: primaryRed),
                                  ),
                                  Text(
                                    "Something went wrong with your",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14.sp,
                                        color: primaryRed),
                                  ),
                                  Text(
                                    "payment information. Please try again.",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14.sp,
                                        color: primaryRed),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 32.h),
                                    child: CustomButton(
                                      name: "Ok",
                                      onTap: () {
                                        Navigator.pushNamed(context, "five");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                           );
                        },
                    );
                  },
                ),
              ),
              SizedBox(height: 24.h,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 74.h,
                      endIndent: 16.h,
                      color: primarySteel,
                    ),
                  ),
                  gloabalText(
                      name: "OR",
                      fontFamily: "PoppinsMedium",
                      fontSize: 16,
                      color: primarySteel),
                  Expanded(
                    child: Divider(
                      indent: 16.h,
                      endIndent: 74.h,
                      color: primarySteel,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 20.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Wrong email address? ",
                          style: TextStyle(
                              color: primarySteel,
                              fontSize: 16,
                              fontFamily: "Poppins"),
                        ),
                        TextSpan(
                            text: "Change",
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                                fontFamily: "PoppinsMedium",
                                decoration: TextDecoration.underline,
                                decorationColor: primaryColor),
                        ),
                      ],
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
