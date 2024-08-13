import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/presentation/signup_screen_three/model/signup_screen_three_model.dart';
import 'package:medicine_app/app/presentation/signup_screen_three/provider/signup_screen_three_provider.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:provider/provider.dart';

class SignupScreenThree extends StatefulWidget {
  const SignupScreenThree({super.key});

  @override
  State<SignupScreenThree> createState() => _SignupScreenTwoState();
}

class _SignupScreenTwoState extends State<SignupScreenThree> {
  SignupScreenThreeProvider? providerT;
  SignupScreenThreeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SignupScreenThreeProvider>(context, listen: true);
    providerF = Provider.of<SignupScreenThreeProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 20.h),
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
                  padding: EdgeInsets.only(top: 24.h, right: 26.h),
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
            Expanded(
              child: ListView(
                primary: true,
                shrinkWrap: false,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 24.h, left: 20.h),
                      child: Text(
                        "Step 3 of 5",
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
                      padding:
                          EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                      child: Text(
                        "Choose Your Gold plan",
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
                        "Unlock limitless potential with our Gold plan - the smart choice for growth.",
                        style: TextStyle(
                            color: primaryEbonyclay,
                            fontFamily: "Poppins",
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: providerF!.planList.length,
                    itemBuilder: (context, index) {
                      SignupScreenThreeModel data = providerF!.planList[index];
                      return Padding(
                        padding:
                            EdgeInsets.only(top: 16.h, left: 20.h, right: 20.h),
                        child: GestureDetector(
                          child: Container(
                            height: 92.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                border: Border.all(
                                    color: providerT!.gold == index
                                        ? primaryColor
                                        : primaryGrey300)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child:  providerT!.gold == index? SvgPicture.asset(
                                      "assets/images/Radio Button.svg"): SvgPicture.asset(
                                      "assets/images/Radio.svg"),
                                ),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${data.name}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "PoppinsMedium"),
                                      ),
                                      Text(
                                        "${data.subName}",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          color: primarySteel,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${data.price}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsMedium"),
                                    ),
                                    Text(
                                      "${data.removePrice}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          color: primarySteel,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationColor: primarySteel),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            providerT!.change(index);
                          },
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 21.h, right: 20),
                      child: Text(
                        "\$ * 0.00 payment for the first 30 days only.  Cancel anytime.",
                        style: TextStyle(
                            color: primarySteel,
                            fontFamily: "Poppins",
                            fontSize: 14.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 20.h, left: 20.h, right: 20.h, bottom: 28.h),
              child: CustomButton(
                name: "Next",
                onTap: () {
                  Navigator.pushNamed(context, "four");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
