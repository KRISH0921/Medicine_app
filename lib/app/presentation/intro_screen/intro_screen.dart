import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/presentation/intro_screen/provider/intro_provider.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:medicine_app/app/utils/utils_pref.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController();

  IntroProvider? providerT;
  IntroProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<IntroProvider>(context, listen: true);
    providerF = Provider.of<IntroProvider>(context, listen: false);

    return Scaffold(
      body: Container(
        color: primaryWhite,
        child: SafeArea(
          child: Stack(
            children: [
              PageView.builder(
                controller: pageController,
                itemCount: providerF!.dataList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                             EdgeInsets.only(top: 64.h, left: 20.h, right: 20.h),
                        child: Text(
                          '${providerT!.dataList[index].title}',
                          style: TextStyle(
                              color: primaryBlack,
                              fontFamily: "Playfair",
                              fontSize: 28.sp),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 16.h, left: 20.h),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${providerT!.dataList[index].subTitle}',
                            style: TextStyle(
                                color: primaryBlack,
                                fontFamily: "Poppins",
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                      providerT!.change == 0 ? Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding:  EdgeInsets.only(
                                        top: 16.h, left: 20.h),
                                    child: SvgPicture.asset(
                                        "assets/images/check.svg"),
                                  ),
                                ),
                                 Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.h, top: 16.h),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                          fontFamily: "Poppins", fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(),
                      providerT!.change == 0
                          ? Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 16.h, left: 20.h),
                                    child: SvgPicture.asset(
                                        "assets/images/check.svg"),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding:  EdgeInsets.only(
                                        left: 20.h, top: 12.h),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, ",
                                      style: TextStyle(
                                          fontFamily: "Poppins", fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: providerT!.change == 0 ? 20.h : 95.h),
                        child: Image.asset(
                          '${providerT!.dataList[index].image}',
                          height: providerT!.change == 0 ? 172.h : 250.h,
                          width: providerT!.change == 0 ? 242.h  : 335.h,
                        ),
                      ),
                    ],
                  );
                },
                onPageChanged: (value) {
                  providerT!.colorChange(value);
                },
              ),
              Padding(
                padding:  EdgeInsets.only(top:95.h,bottom: 98.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        providerF!.dataList.length,
                        (index) => Padding(
                          padding:  EdgeInsets.only(left: 4.h, right: 4.h),
                          child: Container(
                            height: 10.h,
                            width: 10.h,
                            decoration: BoxDecoration(
                                color: providerT!.change == index
                                    ? Color(0xFF0DB14C)
                                    : Color(0xFF75869C),
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 20.h, top: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16.sp,
                            fontFamily: "PoppinsMedium"),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "login");
                      },
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 20.h),
                      child: SvgPicture.asset(
                        "assets/images/cros.svg",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                    top: 704.h, right: 20.h, left: 20.h),
                child: CustomButton(
                  name: "Start your free trial",
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "welcome");
                    UtilsPref utilPref = UtilsPref();
                    utilPref.setIntro(true);
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
