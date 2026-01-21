import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/theming/app_colors.dart';

class AppStyles {
  static TextStyle font24Black700 = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.0.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle font10GrayRegular = TextStyle(
    fontSize: 10.0.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.greyColor,
  );

  static TextStyle font1400GrayRegular = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
    height: 1.5,
  );

  static TextStyle font500LightGrayMedium = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );

  static TextStyle font500DarkBlueMedium = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlueColor,
  );

   static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlueColor,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
