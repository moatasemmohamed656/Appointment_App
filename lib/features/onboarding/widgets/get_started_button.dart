import 'package:flutter/material.dart';
import 'package:appointment_app/core/router/routes.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/helpers/extentions.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonWidth: 300.w,
      buttonText: "Get Started",
      textStyle: AppStyles.font16WhiteSemiBold,
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
    );
  }
}
