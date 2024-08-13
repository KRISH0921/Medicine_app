import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/presentation/signup_screen_four/provider/signup_screen_four_povider.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:provider/provider.dart';

import '../../components/gloabel_text.dart';

class SignupScreenFour extends StatefulWidget {
  const SignupScreenFour({super.key});

  @override
  State<SignupScreenFour> createState() => _SignupScreenFourState();
}

class _SignupScreenFourState extends State<SignupScreenFour> {
  SignupScreenFourProvider? providerT;
  SignupScreenFourProvider? providerF;

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SignupScreenFourProvider>(context, listen: true);
    providerF = Provider.of<SignupScreenFourProvider>(context, listen: false);

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
                    "Step 4 of 5",
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
                          "Enter a payment method",
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
                        padding:
                            EdgeInsets.only(top: 16.h, left: 20.h, right: 20),
                        child: Text(
                          "Enter your debit or credit card information to activate your membership now.",
                          style: TextStyle(
                              color: primaryEbonyclay,
                              fontFamily: "Poppins",
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      height: 206,
                      width: 375,
                      decoration: BoxDecoration(
                        color: primaryGrey100,
                        border: Border.symmetric(
                          horizontal: BorderSide(color: primaryGrey300),
                        ),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              providerT!.change();
                            },
                            child: Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h, top: 24.h),
                                    child: providerT!.show == true
                                        ? SvgPicture.asset(
                                            "assets/images/Radio.svg")
                                        : SvgPicture.asset(
                                        "assets/images/Radio Button.svg")),
                                Padding(
                                  padding: EdgeInsets.only(top: 25, left: 16),
                                  child: gloabalText(
                                      name: "Credit/debit card",
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      color: primaryEbonyclay),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 24.h, left: 60.h, right: 20.h),
                              child: Container(
                                height: 56.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: primaryGrey100,
                                    border: Border.all(color: primaryGrey400),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r))),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: SvgPicture.asset(
                                          "assets/images/debit card sample.svg"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: gloabalText(
                                          name: "4242",
                                          fontFamily: "Poppins",
                                          fontSize: 16.sp,
                                          color: primaryGrey400),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: gloabalText(
                                          name: "MM/YY ",
                                          fontFamily: "Poppins",
                                          fontSize: 16.sp,
                                          color: primaryGrey400),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 39.h, right: 24),
                                      child: gloabalText(
                                          name: "CVC",
                                          fontFamily: "Poppins",
                                          fontSize: 16.sp,
                                          color: primaryGrey400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              providerT!.change();
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 27.h, left: 20.h),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: providerT!.show == true
                                        ? SvgPicture.asset(
                                            "assets/images/Radio Button.svg",)
                                        : SvgPicture.asset(
                                            "assets/images/Radio.svg"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h, top: 24.h),
                                  child: SvgPicture.asset(
                                      "assets/images/Apple Pay.svg"),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.h),
                      child: Divider(
                        color: primaryGrey300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 32.h),
                      child: gloabalText(
                          name: "Have a promo code?",
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: primaryBlack),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.h, top: 8.h),
                        child: Text(
                          "Add code",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "PoppinsMedium",
                              fontSize: 16.sp,
                              decoration: TextDecoration.underline,
                              decorationColor: primaryColor),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 32.h),
                      child: gloabalText(
                          name: "Your plan",
                          fontSize: 16.sp,
                          fontFamily: "Poppins",
                          color: primaryBlack),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 24.h, left: 20.h),
                          child: gloabalText(
                              name: "Individual",
                              fontSize: 16.sp,
                              fontFamily: "PoppinsMedium",
                              color: primaryBlack),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 24.h, left: 235.h, right: 20.h),
                          child: gloabalText(
                              name: "\$5.99/mo",
                              fontSize: 16.sp,
                              fontFamily: "PoppinsMedium",
                              color: primaryBlack),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, left: 20.h),
                      child: gloabalText(
                          name: "Payment starts oct 10,2023",
                          fontSize: 14,
                          fontFamily: "Poppins",
                          color: primarySteel),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.h),
                      child: Divider(
                        color: primaryGrey300,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 24.h, left: 20.h),
                          child: gloabalText(
                              name: "Total due today",
                              fontSize: 16.sp,
                              fontFamily: "PoppinsSemiBold",
                              color: primaryBlack),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 24.h, left: 217.h, right: 20.h),
                          child: gloabalText(
                              name: "\$0.00",
                              fontSize: 16.sp,
                              fontFamily: "PoppinsSemiBold",
                              color: primaryBlack),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h, left: 20.h, right: 20),
                      child: gloabalText(
                          name:
                              "Enjoy a risk-free 30-day trial with the option to cancel anytime, with no charges until the trial period ends.",
                          fontSize: 14,
                          fontFamily: "Poppins",
                          color: primarySteel),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 32, left: 20, right: 20.h, bottom: 32.h),
                child: CustomButton(
                  name: "Next",
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 366.h,
                          decoration: BoxDecoration(
                            color: primaryWhite,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15.r),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8.h, left: 143.5.h, right: 143.5.h),
                                child: Container(
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                      color: primaryGrey300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 24.h, left: 20.h, right: 20.h),
                                child: gloabalText(
                                    name:
                                        "Agree to monthly charges of \$9.99 for the family plan or \$5.99 for the individual plan after your trial period ends, unless cancelled at least one day prior.\n",
                                    fontFamily: "Poppins",
                                    fontSize: 14.sp,
                                    color: primaryEbonyclay),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20.h, right: 20.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                    text:
                                        "You can manage your subscription at any time through your account settings, and for more details, see our ",
                                    style: TextStyle(
                                        color: primaryEbonyclay,
                                        fontSize: 14,
                                        fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: "Terms and Conditions.",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontFamily: "PoppinsMedium",
                                        decoration:
                                            TextDecoration.underline,
                                        decorationColor: primaryColor),
                                  ),
                                ])),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 32.h, left: 20.h, right: 20.h),
                                child: CustomButton(
                                  name: "Start free trial",
                                  onTap: () {
                                    Navigator.pushNamed(context, "five");
                                  },
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 16.h),
                                    child: GestureDetector(
                                        child: gloabalText(
                                            name: "Cancel",
                                            fontFamily: "PoppinsMedium",
                                            fontSize: 16,
                                            color: primaryEbonyclay),
                                    onTap: () {
                                      Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                              )
                            ],
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
