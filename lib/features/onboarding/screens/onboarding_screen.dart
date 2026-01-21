import 'package:flutter/material.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:appointment_app/features/onboarding/widgets/get_started_button.dart';
import 'package:appointment_app/features/onboarding/widgets/doctor_img_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImgAndText(),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.h),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.",
                        style: AppStyles.font10GrayRegular,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
