import 'package:doctors/di/dependancy_injection.dart';
import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/login/ui/login_screen.dart';
import 'package:doctors/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/home/ui/home_screen.dart';
import '../features/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
             case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => const HomeScreen()
        ) ;  
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined For ${settings.name}'),
                )));
    }
  }
}
