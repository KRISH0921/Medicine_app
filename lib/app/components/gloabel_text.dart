import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget gloabalText(
    {required String name, double? fontSize, Color? color, String? fontFamily,})
{
  return Text(
    name,
    style: TextStyle(
      fontFamily: fontFamily ?? "",
      fontSize: 16.sp,
      color: color,
    ),
  );
}

