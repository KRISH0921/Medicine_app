import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicine_app/app/components/gloabel_text.dart';
import 'package:medicine_app/app/components/global_button.dart';
import 'package:medicine_app/app/presentation/get_medicine_screen/provider/get_medicine_provider.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:provider/provider.dart';

class GetMedicineScreen extends StatefulWidget {
  const GetMedicineScreen({super.key});

  @override
  State<GetMedicineScreen> createState() => _GetMedicineScreenState();
}

class _GetMedicineScreenState extends State<GetMedicineScreen> {
  GetMedicineProvider? providerT;
  GetMedicineProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<GetMedicineProvider>(context, listen: true);
    providerF = Provider.of<GetMedicineProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/Start your free trial today.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, right: 20.h),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/images/cros.svg")),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 46.h),
                child: gloabalText(
                    name: "Get Medicine",
                    fontFamily: "Playfair",
                    fontSize: 36.h,
                    color: primaryBlack),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 102.h),
                child: gloabalText(
                    name:
                        "More savings. More perks.\nmore back in your pocket.",
                    fontFamily: "Poppins",
                    fontSize: 16.h,
                    color: primarySteel),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 170.h, left: 20.h, right: 20.h, bottom: 244.h),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFBEBEBE),
                      blurRadius: 16,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: gloabalText(
                            name: "${providerT!.getList[0].title}",
                            color: primaryBlack,
                            fontSize: 16.h,
                            fontFamily: "PoppinsSemiBold"),
                      ),
                      gloabalText(
                        name: "${providerT!.getList[1].title}",
                        color: primaryEbonyclay,
                        fontSize: 14.h,
                        fontFamily: "Poppins",
                      ),
                      Divider(
                        color: primaryGrey300,
                      ),
                      gloabalText(
                        name: "${providerT!.getList[2].title}",
                        color: primaryEbonyclay,
                        fontSize: 14.h,
                        fontFamily: "Poppins",
                      ),
                      Divider(
                        color: primaryGrey300,
                      ),
                      gloabalText(
                        name: "${providerT!.getList[3].title}",
                        color: primaryEbonyclay,
                        fontSize: 14.h,
                        fontFamily: "Poppins",
                      ),
                      Divider(
                        color: primaryGrey300,
                      ),
                      gloabalText(
                        name: "${providerT!.getList[4].title}",
                        color: primaryEbonyclay,
                        fontSize: 14.h,
                        fontFamily: "Poppins",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 368.h),
              child: Center(
                child: gloabalText(
                  name: "Plans start at only \$9.99/mo. Cancel anytime.",
                  color: primarySteel,
                  fontSize: 14.h,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 658.h,left: 20.h,right: 20.h),
              child: CustomButton(name: "Start your free trial today", onTap: () {
                Navigator.pushNamed(context, "welcome");
              }),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.h,),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  child: gloabalText(
                      name: "No thanks",
                      fontFamily: "PoppinsMedium",
                      fontSize: 16,
                      color: primaryEbonyclay),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
