import 'package:doctors/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Doctor extends StatelessWidget {
   const Doctor({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Doctors',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    
    );
  }
}