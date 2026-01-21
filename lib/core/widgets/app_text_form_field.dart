import 'package:flutter/material.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/theming/app_colors.dart';
// ignore_for_file: dead_code

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    required this.obscureText,
    this.hintStyle,
    this.textStyle,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
  });

  final Widget? suffixIcon;
  final String hintText;
  final bool obscureText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        isDense: true,

        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.0.w),

        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0.r),
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1.3.w,
              ),
            ),

        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0.r),
              borderSide: BorderSide(
                color: AppColors.lighterGreyColor,
                width: 1.0.w,
              ),
            ),

        hintStyle: hintStyle ?? AppStyles.font500LightGrayMedium,
        hintText: hintText,

        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.primaryColor,
        fillColor: AppColors.moreLighterGreyColor,
        filled: true,
      ),

      obscureText: obscureText ?? false,
      style: textStyle ?? AppStyles.font500DarkBlueMedium,
    );
  }
}
