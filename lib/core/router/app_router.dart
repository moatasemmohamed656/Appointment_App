import 'package:flutter/material.dart';
import 'package:appointment_app/core/router/routes.dart';
import 'package:appointment_app/features/login/ui/screens/login_screen.dart';
import 'package:appointment_app/features/onboarding/screens/onboarding_screen.dart';

class AppRouter {

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) =>  OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
  
}