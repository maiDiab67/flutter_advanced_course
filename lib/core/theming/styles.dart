import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {

static TextStyle font24Black700Weight= TextStyle(
  fontSize: 24.sp,
  fontWeight:FontWeight.w700,
  color:Colors.black
);

static TextStyle font32BlueBold= TextStyle(
  fontSize: 32.sp,
  fontWeight:FontWeight.bold,
  color:ColorsManger.mainBlue
);

static TextStyle font13GrayRegular= TextStyle(
  fontSize: 13.sp,
  fontWeight:FontWeight.normal,
  color:ColorsManger.gray
);
static TextStyle font16WhiteSemiBold= TextStyle(
  fontSize: 13.sp,
  fontWeight:FontWeight.w500,
  color:Colors.white
);

}