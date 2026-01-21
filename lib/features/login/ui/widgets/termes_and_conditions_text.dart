import 'package:flutter/material.dart';
import 'package:appointment_app/core/theming/styles.dart';

class TermesAndConditionsText extends StatelessWidget {
  const TermesAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'By continuing, you agree to our\n',
          style: AppStyles.font13GrayRegular,
          children: <TextSpan>[
            TextSpan(
              text: 'Terms of Service',
              style: AppStyles.font13DarkBlueMedium,
            ),
            const TextSpan(text: ' and\n'),
            TextSpan(
              text: 'Privacy Policy',
              style: AppStyles.font13DarkBlueMedium,
            ),
            const TextSpan(text: '.'),
          ],
        ),
      ),
    );
  }
}
