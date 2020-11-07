import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/ui/auth/login_in.dart';
import 'package:tajicEasy/ui/init/splash_screen.dart';
import 'package:tajicEasy/ui/pages/home_page.dart';
import 'package:tajicEasy/ui/widgets/bottomNavigationBar.dart';
import 'constants/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      theme: AppTheme.themeData,
      home: SplashScreen(),
    );
  }
}
