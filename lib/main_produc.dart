import 'package:doctors/core/di/dependancy_injection.dart';
import 'package:doctors/doctor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
//for text being hidden in release mode
await ScreenUtil.ensureScreenSize();
  createAndRegisterDependencies();
  runApp(const DoctorGeneralSettings());
}

