import 'package:doctors/features/login/ui/login_screen.dart';
import 'package:doctors/router/routes.dart';
import 'package:flutter/material.dart';

import '../features/onboarding/ui/onboarding_screen.dart';

class AppRouter {


static Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.onboardingScreen:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case Routes.loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold(body: Center(child: Text('No route defined For ${settings.name}'),)));
  }


}



}