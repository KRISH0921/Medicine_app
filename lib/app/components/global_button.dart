import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

class CustomButton extends StatefulWidget {
   CustomButton({super.key,required this.name,required this.onTap, this.buttonColor});

  String name;
  Function onTap;
  Color? buttonColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.h,
        width: double.infinity,
        child: Center(
          child: Text(
            widget.name,
            style: TextStyle(
                color: primaryWhite,
                fontFamily: "PoppinsMedium",
                fontSize: 16.sp),
          ),
        ),
        decoration: BoxDecoration(
          color: widget.buttonColor?? primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10.r),
          ),
          boxShadow: [BoxShadow(color: primaryGreen,offset: Offset(0,3))]
        ),
      ),
      onTap: () {
        widget.onTap.call();
      }
    );
  }
}
