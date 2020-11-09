import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_routes.dart';
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
      initialRoute: "/",
      getPages: AppRoutes.routes,
      // home: AppBarNav(),
    );
  }
}
