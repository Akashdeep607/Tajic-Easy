import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';

class BookingCompleted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.bus_alert, size: 0.2.sw, color: AppTheme.COLOR_DARK_BLUE),
              Text(
                "You don't have any bookings",
                style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 50.ssp),
              )
            ],
          )),
    );
  }
}
