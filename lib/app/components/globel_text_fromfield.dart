import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/app/them/color_them/color_them.dart';

class CustomTextFromField extends StatefulWidget {

  CustomTextFromField({super.key,required this.hintText,required this.onTap,});

  String? hintText;
  Function onTap;

  @override
  State<CustomTextFromField> createState() => _CustomTextFromFieldState();
}

class _CustomTextFromFieldState extends State<CustomTextFromField> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryGrey300),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryGrey300),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryGrey300),
              borderRadius: BorderRadius.all(Radius.circular(30.r))),
          contentPadding: EdgeInsets.all(16),
          hintText: widget.hintText,
          hintStyle: TextStyle(
              color: primarySteel,
              fontFamily: "Poppins",
              fontSize: 16.sp),
        ),
      ),
      onTap: (){
        widget.onTap.call();
      },
    );
  }
}
