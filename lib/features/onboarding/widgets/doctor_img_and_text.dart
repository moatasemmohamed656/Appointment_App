import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:appointment_app/core/theming/styles.dart';
// ignore_for_file: deprecated_member_use

class DoctorImgAndText extends StatelessWidget {
  const DoctorImgAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svg/docdoc_logo_low_opacity.svg"),

        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/doctor_onboarding.png"),
        ),

        Positioned(
          bottom: 30,
          left: 50,
          right: 50,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor\nAppointment App",
            style: AppStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
