import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/app/components/gloabel_text.dart';
import 'package:medicine_app/app/presentation/pharmacy_search_screen/model/pharmact_search_model.dart';
import 'package:medicine_app/app/presentation/pharmacy_search_screen/provider/pharmacy_search_provider.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';
import 'package:provider/provider.dart';

class PharmacySearchScreen extends StatefulWidget {
  const PharmacySearchScreen({super.key});

  @override
  State<PharmacySearchScreen> createState() => _PharmacySearchScreenState();
}

class _PharmacySearchScreenState extends State<PharmacySearchScreen> {
  PharmacySearchProvider? providerT;
  PharmacySearchProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<PharmacySearchProvider>(context, listen: true);
    providerF = Provider.of<PharmacySearchProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 13.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryGrey300),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryGrey300),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryGrey300),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16.h),
                        prefixIcon: Icon(Icons.search_rounded),
                        prefixIconColor: primaryGrey500,
                        hintText: "Pharmacy name",
                        hintStyle: TextStyle(
                            color: primaryGrey500,
                            fontFamily: "Poppins",
                            fontSize: 14.sp),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.h,),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: gloabalText(
                          name: "Cancel",
                          color: primaryEbonyclay,
                          fontFamily: "PoppinsMedium",
                          fontSize: 16.h))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Container(
                height: 64.h,
                decoration: BoxDecoration(
                  border: Border(bottom : BorderSide(color: primaryGrey400),top:BorderSide(color: primaryGrey400) ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Text(
                "Nearby Find Medicine Gold pharmacies",
                style: TextStyle(
                    color: primaryBlack,
                    fontFamily: "PoppinsMedium",
                    fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 14.h,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                itemCount: providerF!.medicineList.length,
                itemBuilder: (context, index) {
                  PharmacySearchModel show = providerF!.medicineList[index];
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "details");
                          },
                          child: Row(
                            children: [
                              Image.asset("assets/images/Safeway.png",
                                  height: 40.h, width: 40.h),
                              SizedBox(width: 16.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${show.subTitle}",
                                      style: TextStyle(
                                          color: primaryBlack,
                                          fontFamily: "PoppinsMedium",
                                          fontSize: 16.sp),
                                  ),

                                  Text(
                                    "${show.name}",
                                    style: TextStyle(
                                        color: primarySteel,
                                        fontFamily: "Poppins",
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              SizedBox(width: 156.h,),
                              SvgPicture.asset("assets/images/Back iconb.svg")
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Divider(
                          color: primaryGrey300,
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
