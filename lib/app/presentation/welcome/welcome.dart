import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/gloabel_text.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, right: 20.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/images/cros.svg"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: gloabalText(
                    name: "Welcome to",
                    color: primaryBlack,
                    fontSize: 16,
                    fontFamily: "PoppinsSemiBold"),
              ),
            ),
            Expanded(
              child: ListView(
                children: [Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 24, left: 20.h, right: 20.h),
                      child: gloabalText(
                          name: "Find Medicine, Borkat ",
                          color: primaryBlack,
                          fontSize: 28.sp,
                          fontFamily: "Playfair"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 20.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Congratulations! ",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                            ),
                            TextSpan(
                              text:
                              "Your Gold membership is now activated. Begin your search for pharmacies to find the best prices.!",
                              style: TextStyle(
                                  color: primaryEbonyclay,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, left: 20.h, right: 20.h),
                    child: CustomButton(
                      name: "Search for my pharmacy",
                      onTap: () {
                        Navigator.pushNamed(context, "pharmacy");
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top:40.h,left: 20.h),
                      child: gloabalText(
                          name: "At the pharmacy?",
                          color: primaryBlack,
                          fontSize: 18.sp,
                          fontFamily: "PoppinsSemiBold"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h,top: 16.h,right: 20.h),
                    child: gloabalText(name: "Present your Gold membership card to start saving on your prescriptions instantly.",color: primaryEbonyclay,fontSize: 16.sp,fontFamily: "Poppins"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: 24.h,
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
                            "View my gold Card",
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
                  Padding(
                    padding: EdgeInsets.only(top: 60.h),
                    child: Image.asset("assets/images/Find Medicine Gold.png",width: 242.h,height: 172.h,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
