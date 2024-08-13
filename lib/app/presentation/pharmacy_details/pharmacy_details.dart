import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/gloabel_text.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

class PharmacyDetails extends StatefulWidget {
  const PharmacyDetails({super.key});

  @override
  State<PharmacyDetails> createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 20.h),
                  child: GestureDetector(
                    child: SvgPicture.asset(
                      "assets/images/Back icon.svg",
                      color: primaryEbonyclay,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.h, right: 26.h),
                  child: GestureDetector(
                    child: SvgPicture.asset(
                      "assets/images/cros.svg",
                      color: primaryEbonyclay,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.h, right: 20.h, top: 24.h),
              child: gloabalText(
                  name:
                      "Discover the precious health solutions at Safeway Find Medicine Gold Pharmacy.",
                  color: primaryEbonyclay,
                  fontSize: 12.sp,
                  fontFamily: "Poppins"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 20.h, right: 20.h),
              child: gloabalText(
                  name:
                      "Effortlessly save with your digital Gold card - simply show it to the pharmacist and start reaping the benefits.",
                  color: primaryEbonyclay,
                  fontSize: 18.sp,
                  fontFamily: "PoppinsSemiBold"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 20.h),
              child: gloabalText(
                  name: "View my Gold Card",
                  color: primaryColor,
                  fontSize: 16.sp,
                  fontFamily: "Poppins"),
            ),
            Divider(
              color: primaryGrey300,
              indent: 20.h,
              endIndent: 20.h,
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: gloabalText(
                  name: "Compare Gold Prices",
                  color: primaryEbonyclay,
                  fontSize: 18.sp,
                  fontFamily: "PoppinsSemiBold"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 20.h),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/Location Icon.svg"),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: gloabalText(
                        name: "3714 Angus Road",
                        color: primaryColor,
                        fontSize: 16.sp,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              color: primaryGrey300,
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: Image.asset("assets/images/Saymbol Logo.png",
                  height: 60.h, width: 60.h),
            ),
            Center(
                child: gloabalText(
                    name: "Find the best deals on your medication",
                    color: primarySteel,
                    fontFamily: "Poppins",
                    fontSize: 16.sp)),
            Center(
              child: gloabalText(
                  name: "by comparing Gold prices and ",
                  color: primarySteel,
                  fontFamily: "Poppins",
                  fontSize: 16.sp),
            ),
            Center(
              child: gloabalText(
                  name: "pharmacies with ease.",
                  color: primarySteel,
                  fontFamily: "Poppins",
                  fontSize: 16.sp),
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: CustomButton(
                name: "Search for your drug",
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(top: 50.h),
                        child: Container(
                          // height: 756.h,
                          decoration: BoxDecoration(
                            color: primaryCasal,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15.r),
                            ),
                          ),
                          child: Expanded(
                            child: ListView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 29.h, horizontal: 20.h),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/images/Phone Icon.svg"),
                                          SizedBox(
                                            width: 12.h,
                                          ),
                                          gloabalText(
                                              name: "Call Gold Support",
                                              color: primaryWhite,
                                              fontSize: 16),
                                          Padding(
                                            padding: EdgeInsets.only(left: 200),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: SvgPicture.asset(
                                                "assets/images/cros.svg",
                                                color: primaryWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 170.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.h),
                                      child: Container(
                                        height: 304.h,
                                        decoration: BoxDecoration(
                                            color: primaryWhite,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20, right: 20.h),
                                              child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: gloabalText(
                                                      name: "Find Medicine",
                                                      color: primaryBlack,
                                                      fontSize: 18.sp,
                                                      fontFamily:
                                                          "PoppinsMedium"),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 12.h, right: 65.h),
                                              child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: gloabalText(
                                                      name: "Gold",
                                                      color: primarySupernova,
                                                      fontSize: 24.sp,
                                                      fontFamily: "Playfair")),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.h),
                                              child: gloabalText(
                                                  name: "Borkat Ullah",
                                                  color: primaryBlack,
                                                  fontFamily: "PoppinsSemiBold",
                                                  fontSize: 20.sp),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 16.h, left: 20.h),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      gloabalText(
                                                          name: "BIN",
                                                          color: primarySteel,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Poppins"),
                                                      gloabalText(
                                                          name: "PCN",
                                                          color: primarySteel,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Poppins"),
                                                      gloabalText(
                                                          name: "GROUP",
                                                          color: primarySteel,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Poppins"),
                                                      gloabalText(
                                                          name: "MEMBER ID",
                                                          color: primarySteel,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Poppins"),
                                                      gloabalText(
                                                          name: "PERSON CODE",
                                                          color: primarySteel,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Poppins"),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 16.h,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      gloabalText(
                                                          name: "600428",
                                                          color: primaryBlack,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "PoppinsMedium"),
                                                      gloabalText(
                                                          name: "10634",
                                                          color: primaryBlack,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "PoppinsMedium"),
                                                      gloabalText(
                                                          name: "GOLD",
                                                          color: primaryBlack,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "PoppinsMedium"),
                                                      gloabalText(
                                                          name: "JR74AV93",
                                                          color: primaryBlack,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "PoppinsMedium"),
                                                      gloabalText(
                                                          name: "01",
                                                          color: primaryBlack,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "PoppinsMedium"),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 160.h,
                                                        right: 20.h),
                                                    child: SvgPicture.asset(
                                                        "assets/images/profile.svg"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 107.h,
                                    ),
                                    gloabalText(
                                        name:
                                            "Present your Find Medicine Gold card to",
                                        color: primaryWhite,
                                        fontFamily: "Poppins",
                                        fontSize: 16.sp),
                                    gloabalText(
                                        name:
                                            "the pharmacist for the lowest price on",
                                        color: primaryWhite,
                                        fontFamily: "Poppins",
                                        fontSize: 16.sp),
                                    gloabalText(
                                        name: "your prescription",
                                        color: primaryWhite,
                                        fontFamily: "Poppins",
                                        fontSize: 16.sp),
                                  ],
                                ),
                              ],
                            ),
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
    );
  }
}
