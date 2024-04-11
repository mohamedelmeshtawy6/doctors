import 'package:doctors/di/dependancy_injection.dart';
import 'package:doctors/doctor.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await init();
  runApp(const Doctor());
}

// i stoped after create email and password widget for login