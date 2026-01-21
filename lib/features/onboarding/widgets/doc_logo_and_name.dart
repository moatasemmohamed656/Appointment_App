import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/docdoc_logo.svg"),
        SizedBox(width: 8.w),
        Text("Docdoc", style: AppStyles.font24Black700),
      ],
    );
  }
}
