import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  const CardWidget({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Card(
      margin: EdgeInsets.zero,
      shape: Border(
        bottom: BorderSide(width: 0.0, color: Colors.blueGrey),
      ),
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.zero, side: BorderSide(color: Colors.red)),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.blueGrey, fontSize: 40.ssp, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 50.w,
          color: AppTheme.COLOR_GREY,
        ),
      ),
    );
  }
}
