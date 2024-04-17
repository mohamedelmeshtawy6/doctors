import 'package:doctors/di/dependancy_injection.dart';
import 'package:doctors/doctor.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();

  runApp(const Doctor());
}
