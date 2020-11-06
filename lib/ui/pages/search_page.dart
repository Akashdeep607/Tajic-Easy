import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: AppTheme.PRIMARY_COLOR,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(80),
                        ),
                        width: double.infinity,
                        child: Text("PLAN TRIP", style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        color: Colors.white,
                        width: ScreenUtil().setWidth(900),
                        height: ScreenUtil().setWidth(600),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: AppTheme.SECONDARY_COLOR_1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
