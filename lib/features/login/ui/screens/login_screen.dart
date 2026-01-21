import 'package:flutter/material.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/features/login/ui/widgets/already_have_acount_text.dart';
import 'package:appointment_app/features/login/ui/widgets/termes_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.h, vertical: 50.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: AppStyles.font24BlueBold),
                SizedBox(height: 8.h),
                Text(
                  "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                  style: AppStyles.font1400GrayRegular,
                ),
                SizedBox(height: 36.h),

                // Additional UI elements like TextFields and Buttons would go here
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email", obscureText: false),
                      SizedBox(height: 20.h),
                      AppTextFormField(
                        hintText: "Password",
                        obscureText: isObscured,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscured = !isObscured;
                            });
                          },
                          child: Icon(
                            isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.font24BlueBold.copyWith(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                SizedBox(height: 40.h),
                AppTextButton(
                  buttonText: "Login",
                  textStyle: AppStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),

                SizedBox(height: 24.h),
                TermesAndConditionsText(),
                SizedBox(height: 24.h),
                Center(child: AlreadyHaveAcountText()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
