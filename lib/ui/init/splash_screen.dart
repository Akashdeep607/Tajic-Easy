import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/ui/pages/home_page.dart';

import 'mySharedPreferences.dart';
import 'onBoarding_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadSplashScreen();
    myAppState();
  }

  bool isFirstTimeOpen = false;

  myAppState() {
    MySharedPreferences.instance.getBooleanValue("firstTimeOpen").then((value) => setState(() {
          isFirstTimeOpen = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/logo3.png",
          width: 0.8.sw,
        ),
      ),
    );
  }

  Future<Timer> loadSplashScreen() async {
    return Timer(Duration(seconds: 3), onDoneLoadind);
  }

  onDoneLoadind() async {
    Get.offAll(isFirstTimeOpen ? HomePage() : OnBoardingPage());
  }
}
