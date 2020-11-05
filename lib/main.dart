import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/ui/auth/login_in.dart';
import 'package:tajicEasy/ui/init/splash_screen.dart';

import 'constants/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: Login(),
    );
  }
}
