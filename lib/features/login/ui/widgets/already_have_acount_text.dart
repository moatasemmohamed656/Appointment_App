import 'package:flutter/material.dart';
import 'package:appointment_app/core/theming/styles.dart';

class AlreadyHaveAcountText extends StatelessWidget {
  const AlreadyHaveAcountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Don't have an account? ",
        style: AppStyles.font13DarkBlueMedium,
        children: <TextSpan>[
          TextSpan(text: 'Sign Up', style: AppStyles.font13DarkBlueMedium),
        ],
      ),
    );
  }
}
