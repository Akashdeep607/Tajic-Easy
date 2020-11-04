import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/auth/login_in.dart';
import 'ui/constants/app_theme.dart';

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
