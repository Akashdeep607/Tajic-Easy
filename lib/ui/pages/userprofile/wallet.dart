import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/ui/pages/userprofile/referAndEarn.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    TextStyle textStyleTitle =
        Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey, fontSize: 40.ssp);
    TextStyle textStyleSubTitle = Theme.of(context)
        .textTheme
        .bodyText1
        .copyWith(fontWeight: FontWeight.bold, fontSize: 45.ssp);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.2.sh),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
                width: double.infinity,
                height: 0.22.sh,
                color: AppTheme.PRIMARY_COLOR,
                child: Row(
                  //mainAxisAlignment:MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 80.w,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      "Wallet",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 60.ssp, color: Colors.white),
                    ),
                  ],
                )),
            Positioned(
              bottom: -0.08.sh,
              child: Card(
                // elevation: 2.0,
                child: Container(
                  width: 0.9.sw,
                  height: 0.14.sh,
                  // color: Colors.white.withOpacity(0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Icon(
                          FlutterIcons.wallet_ent,
                          size: 30.0,
                          color: Color(0xff3867d6),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          dense: true,
                          title: Text(
                            "TOTAL WALLET BALANCE",
                            style: textStyleTitle,
                          ),
                          subtitle: Text("XAF 0.00", style: textStyleSubTitle),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: 180.w),
              child: Card(
                // elevation: 2.0,
                child: Container(
                  width: 0.9.sw,
                  height: 0.14.sh,
                  // color: Colors.white.withOpacity(0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Icon(FlutterIcons.addusergroup_ant,
                            size: 30.0, color: Color(0xfffa8231)),
                      ),
                      Expanded(
                        child: ListTile(
                          dense: true,
                          title: Text(
                            "Refer friends",
                            style: textStyleSubTitle,
                          ),
                          subtitle: Text("Refer your friends and earn wallet money!!",
                              style: textStyleTitle),
                          trailing: RaisedButton(
                            color: AppTheme.BUTTON_COLOR_RED,
                            onPressed: () {
                              Get.to(ReferAndEarn());
                            },
                            child: Text(
                              "Refer now",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
