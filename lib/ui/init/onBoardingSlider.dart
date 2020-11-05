import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingSlider extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnBoardingSlider({Key key, this.imagePath, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(height: 20),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        // Text(title, style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 20.0)),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ));
  }
}
