import 'package:doctors/router/app_router.dart';
import 'package:doctors/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'router/routes.dart';

class DoctorGeneralSettings extends StatelessWidget {
  const DoctorGeneralSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Doctors',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColors.mainBlue,
           scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.onboardingScreen,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
