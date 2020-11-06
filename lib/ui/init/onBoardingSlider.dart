import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSlider extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnBoardingSlider({Key key, this.imagePath, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    // ScreenUtil.init(context, designSize: Size(1080, 1334), allowFontScaling: true);

    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 0.7.sw,
        ),
        SizedBox(height: 20.w),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 80.ssp),
        ),
        // Text(title, style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 20.0)),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 40.ssp),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ));
  }
}
