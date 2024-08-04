import 'package:doctors/core/di/dependancy_injection.dart';
import 'package:doctors/core/router/app_router.dart';
import 'package:doctors/core/theming/app_colors.dart';
import 'package:doctors/features/setting/logic/cubit/setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/router/routes.dart';

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
        return BlocProvider(
          create: (context) => getIt<SettingCubit>(),
          child: MaterialApp(
            title: 'Doctors',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: AppColors.mainBlue,
              scaffoldBackgroundColor: Colors.white,
            ),
            initialRoute: Routes.onboardingScreen,
            onGenerateRoute: AppRouter.generateRoute,
          ),
        );
      },
    );
  }
}
