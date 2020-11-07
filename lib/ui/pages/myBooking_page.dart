import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/ui/pages/myBooking_cancelled.dart';
import 'package:tajicEasy/ui/pages/myBooking_completed.dart';

class MyBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("My Booking"),
            bottom: TabBar(indicatorWeight: 4.0, indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text(
                  "COMPLETED",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(fontSize: 40.ssp, color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "CANCELLED",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(fontSize: 40.ssp, color: Colors.white),
                ),
              ),
            ]),
          ),
          body: TabBarView(children: [BookingCompleted(), BookingCancelled()])),
    );
  }
}
