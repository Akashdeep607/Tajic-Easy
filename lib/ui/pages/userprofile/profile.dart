import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';

// TODO: Update functionality
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, allowFontScaling: false);
    TextStyle textStyleTitle =
        Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.blueGrey, fontSize: 45.ssp);
    TextStyle textStyleSubTitle = Theme.of(context)
        .textTheme
        .bodyText1
        .copyWith(fontFamily: AppTheme.poppins, color: Colors.grey, fontSize: 40.ssp);
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0.w),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(15.w),
            child: Container(
              width: double.infinity,
              height: 0.5.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Text("PERSONAL DETAILS",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold, fontSize: 45.ssp)),
                        FlatButton.icon(
                            onPressed: () {}, icon: Icon(Icons.edit_outlined), label: Text("EDIT"))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      //mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(FlutterIcons.user_evi, size: 180.w),
                        Expanded(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              ListTile(
                                dense: true,
                                title: Text(
                                  "Name",
                                  style: textStyleTitle,
                                ),
                                subtitle: Text("Akashdeep Singh", style: textStyleSubTitle),
                              ),
                              ListTile(
                                dense: true,
                                title: Text("Email", style: textStyleTitle),
                                subtitle: Text("Deep@gmail.com", style: textStyleSubTitle),
                              ),
                              ListTile(
                                dense: true,
                                title: Text("Gender", style: textStyleTitle),
                                subtitle: Text("Male", style: textStyleSubTitle),
                              ),
                              ListTile(
                                dense: true,
                                title: Text("Mobile number", style: textStyleTitle),
                                subtitle: Text("8451225478", style: textStyleSubTitle),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
