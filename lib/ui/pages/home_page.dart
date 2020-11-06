import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context);
    ScreenUtil.init(context, designSize: Size(1080, 1334), allowFontScaling: true);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: AppTheme.PRIMARY_COLOR,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          "PLAN TRIP",
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              color: Colors.white, fontSize: 50.ssp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      width: 0.9.sw,
                      height: 0.3.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/images/fromImg.png",
                                width: 70.w,
                              ),
                            ),
                            title: Text(
                              "SOURCE",
                              style:
                                  Theme.of(context).textTheme.headline5.copyWith(fontSize: 40.ssp),
                            ),
                          ),
                          Divider(color: AppTheme.COLOR_GREY, height: 1.0),
                          ListTile(
                            leading: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/images/toImg.png",
                                width: 70.w,
                              ),
                            ),
                            title: Text(
                              "DESTINATION",
                              style:
                                  Theme.of(context).textTheme.headline5.copyWith(fontSize: 40.ssp),
                            ),
                          ),
                          Divider(color: AppTheme.COLOR_GREY, height: 1.0),
                          ListTile(
                            leading: IconButton(
                                onPressed: () {},
                                icon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FlutterIcons.calendar_ant,
                                    color: Colors.black,
                                  ),
                                )),
                            title: Text(
                              "DATE",
                              style:
                                  Theme.of(context).textTheme.headline5.copyWith(fontSize: 40.ssp),
                            ),
                          ),
                          // Divider(color: AppTheme.COLOR_GREY, height: 1.0),
                        ],
                      ),
                    ),
                    MaterialButton(
                      color: AppTheme.BUTTON_COLOR_RED,
                      height: 0.06.sh,
                      minWidth: 0.9.sw,
                      onPressed: () {},
                      child: Text(
                        "SEARCH",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 40.ssp, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
