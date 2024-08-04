import 'package:doctors/core/di/dependancy_injection.dart';
import 'package:doctors/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  createAndRegisterDependencies();
//for text being hidden in release mode
await ScreenUtil.ensureScreenSize();
  runApp(const DoctorGeneralSettings());
}
