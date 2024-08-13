import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:provider/provider.dart';

import 'provider/signup_screen_two_provider.dart';

class SignupScreenTwo extends StatefulWidget {
  const SignupScreenTwo({super.key});

  @override
  State<SignupScreenTwo> createState() => _SignupScreenTwoState();
}

class _SignupScreenTwoState extends State<SignupScreenTwo> {
  SignupScreenTwoProvider? providerT;
  SignupScreenTwoProvider? providerF;

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SignupScreenTwoProvider>(context, listen: true);
    providerF = Provider.of<SignupScreenTwoProvider>(context, listen: false);

    return Scaffold(
      body: Form(
        key: txtKey,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 60.h,left: 20.h),
                    child: GestureDetector(child: SvgPicture.asset("assets/images/Back icon.svg",color: primaryEbonyclay,),
                      onTap: (){
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
                          color: primaryEbonyclay,
                        ),
                      ),
                      onTap: () {
          
                      },
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 20.h),
                  child: Text(
                    "Step 2 of 5",
                    style: TextStyle(
                        color: primarySteel,
                        fontFamily: "Poppins",
                        fontSize: 14.sp),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                        child: Text(
                          "Kindly share your current address with us.",
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
                        padding: EdgeInsets.only(top: 16.h, left: 20.h),
                        child: Text(
                          "Please provide us with your preferred mailing address for your personalized Gold card?",
                          style: TextStyle(
                              color: primaryEbonyclay,
                              fontFamily: "Poppins",
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 26.h, left: 20.h, right: 20.h),
                      child: SizedBox(
                        height: 56.h,
                        width: double.infinity,
                        child: TextFormField(
                          controller: providerT!.txtAddress,
                          onChanged: (value) {
                            providerF!.controllerChange(value);
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryGrey300),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.h))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryGrey300),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.h))),
                            contentPadding: EdgeInsets.all(16.h),
                            hintText: "Street address",
                            hintStyle: TextStyle(
                                color: primarySteel,
                                fontFamily: "Poppins",
                                fontSize: 16.r),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 20.h, right: 20.h),
                      child: SizedBox(
                        height: 56.h,
                        width: double.infinity.h,
                        child: TextFormField(
                          controller: providerT!.txtApt,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primarySteel),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primarySteel),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            contentPadding: EdgeInsets.all(16.h),
                            hintText: "Apt/Suite (optional)",
                            hintStyle: TextStyle(
                                color: primarySteel,
                                fontFamily: "Poppins",
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 20.h, right: 20.h),
                      child: SizedBox(
                        height: 56.h,
                        width: double.infinity.h,
                        child: TextFormField(
                          controller: providerT!.txtCity,
                          onChanged: (valueCity) {
                            providerF!.controllerChangeCity(valueCity);
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primarySteel),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primarySteel),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            contentPadding: EdgeInsets.all(16.h),
                            hintText: "City",
                            hintStyle: TextStyle(
                                color: primarySteel,
                                fontFamily: "Poppins",
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 16.h, left: 20.h, right: 10.h),
                            child: TextFormField(
                              controller: providerT!.txtState,
                              onChanged: (valueState) {
                                providerF!.controllerChangeState(valueState);
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: primarySteel),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: primarySteel),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r))),
                                contentPadding: EdgeInsets.all(16.h),
                                hintText: "State",
                                hintStyle: TextStyle(
                                    color: primarySteel,
                                    fontFamily: "Poppins",
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 16.h, left: 10.h, right: 20.h),
                            child: TextFormField(
                              controller: providerT!.txtZipCode,
                              onChanged: (valueZipCode) {
                                providerF!.controllerChangeZipCode(valueZipCode);
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: primaryGrey300),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: primaryGrey300),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r))),
                                contentPadding: EdgeInsets.all(16.h),
                                hintText: "Zip Code",
                                hintStyle: TextStyle(
                                    color: primarySteel,
                                    fontFamily: "Poppins",
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 24.h, left: 20.h, right: 20.h, bottom: 28.h),
                child: CustomButton(
                  name: "Next",
                  buttonColor: providerT!.txtAddress.text.isEmpty
                      ? providerT!.txtCity.text.isEmpty
                          ? providerT!.txtState.text.isEmpty
                              ? providerT!.txtZipCode.text.isEmpty
                                  ? primaryLightTeal
                                  : primaryColor
                              : primaryColor
                          : primaryColor
                      : primaryColor,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            height: 170,
                            width: 335,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Kindly verify that the address you",
                                  style: TextStyle(
                                      fontFamily: "PoppinsSemiBold",
                                      fontSize: 16.sp,
                                      color: primaryBlack),
                                ),
                                Text(
                                  "provided is accurate.",
                                  style: TextStyle(
                                      fontFamily: "PoppinsSemiBold",
                                      fontSize: 16.sp,
                                      color: primaryBlack),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 32.h),
                                  child: CustomButton(
                                    name: "Got it",
                                    onTap: () {
                                      Navigator.pushNamed(context, "three");
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
            ],
          ),
        ),
      ),
    );
  }
}
