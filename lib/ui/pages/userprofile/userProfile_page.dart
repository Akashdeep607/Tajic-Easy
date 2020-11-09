import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/ui/widgets/card_widget.dart';
import './userProfile_export.dart';

class UserProfilePage extends StatelessWidget {
  // final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    TextStyle themeData =
        Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.blueGrey, fontSize: 45.ssp);
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("My Profile"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: ListView(
            children: [
              // TODO: Add on Tap Functionality

              // User Profile
              GestureDetector(
                onTap: () => Get.to(Profile()),
                child: Material(
                  elevation: 2.0,
                  color: Colors.white,
                  child: Container(
                    width: 0.4.sw,
                    height: 0.2.sh,
                    child: Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FlutterIcons.user_evi, size: 120.w),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Akashdeep Singh", style: themeData),
                                Text("9845214452", style: themeData),
                                Text("Jhon212@gmail.com", style: themeData),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 0.15.sh,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 50.w,
                              color: AppTheme.COLOR_GREY,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),

              // Other Details

              CardWidget(title: "Wallet", onTap: () => Get.to(Wallet())),
              CardWidget(
                title: "Refer & Earn",
                onTap: () => Get.to(ReferAndEarn()),
              ),
              CardWidget(
                title: "Offers",
                onTap: () => Get.to(Offers()),
              ),
              CardWidget(
                title: "Help",
                onTap: () => Get.to(Help()),
              ),
              CardWidget(
                title: "About Us",
                onTap: () => Get.to(AboutUs()),
              ),
              CardWidget(
                title: "Settings",
                onTap: () => Get.to(Settings()),
              ),
              SizedBox(height: 60.w),
              CardWidget(
                title: "Logout",
                // onTap: () => Get.toNamed('myBooking'),
              ),
            ],
          ),
        ));
  }
}
