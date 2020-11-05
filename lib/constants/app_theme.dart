/*
Primary color - 631D76
Secondary color - 272727 or 201a23
Scaffold color - FBFBFB

BUTTONS
Button Success color - 489f63
Button other color - #d63031

Text
Heading Color - Black or 272727
Subtitle - 707070

TEXT_FORM_FIELD
TextFormField Fill Color  - EAEBF3
TextFormField Border Color - 631D76
Text and Icon Color for TfF - 707070

*/
import 'dart:ui';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static double screenWidth = window.physicalSize.width;
  static const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
  static const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);

  static const COLOR_WHITE = Colors.white;
  static const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

// Main Colors
  static const PRIMARY_COLOR = Color(0xff631D76);
  static const SECONDARY_COLOR_1 = Color(0xff272727);
  static const SECONDARY_COLOR_2 = Color(0xff201A23);
  static const SCAFFOLD_COLOR = Color(0xffFBFBFB);

// Buttons
  static const BUTTON_COLOR_GREEN = Color(0xff489f63);
  static const BUTTON_COLOR_RED = Color(0xffd63031);

// TEXT_FORM_FIELD
  static const TEXT_FIELD_BORDER = Color(0xff631D76);
  static const TEXT_FIELD_BG = Color(0xff631D76);
  static const TEXT_FIELD_FILL = Color(0xffEAEBF3);
  static const TEXT_FIELD_TEXT = Color(0xff707070);
  static const TEXT_FIELD_ICON = Color(0xff707070);
  static const TEXT_FIELD_ERROR = Color(0xffD63031);

// Fonts
  static String montserrat = "Montserrat";
  static String poppins = "Poppins";
  static String mavenPro = "MavenPro";

  // Text Style
  static final TextTheme _textTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 40.0, color: PRIMARY_COLOR, fontFamily: montserrat, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: COLOR_DARK_BLUE),
    headline3: TextStyle(fontSize: 20.0),
    headline4: TextStyle(fontSize: 16.0),
    headline5: TextStyle(fontSize: 14.0),
    headline6: TextStyle(fontSize: 12.0),
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: montserrat),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: poppins),
    button: TextStyle(fontSize: 14.0, fontFamily: poppins),
    subtitle1: TextStyle(fontSize: 12.0, fontFamily: poppins, color: COLOR_GREY),
    subtitle2: TextStyle(fontSize: 12.0, fontFamily: poppins, color: COLOR_BLACK),
    // subtitle2: TextStyle(fontSize: 12.0),
  );

  // Small Text Style
  static final TextTheme _smallTextTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 25.0, color: PRIMARY_COLOR, fontFamily: montserrat, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 20.0),
    headline3: TextStyle(fontSize: 18.0),
    headline4: TextStyle(fontSize: 14.0),
    headline5: TextStyle(fontSize: 12.0),
    headline6: TextStyle(fontSize: 10.0),
    bodyText1: TextStyle(fontSize: 12.0, fontFamily: mavenPro),
    bodyText2: TextStyle(fontSize: 12.0, fontFamily: mavenPro, color: COLOR_GREY),
    button: TextStyle(fontSize: 12.0, fontFamily: poppins),
    subtitle1: TextStyle(fontSize: 10.0, fontFamily: poppins, color: COLOR_GREY),
    subtitle2: TextStyle(fontSize: 10.0, fontFamily: poppins, color: COLOR_BLACK),
    // subtitle2: TextStyle(fontSize: 12.0),
  );

// App Theme Data
  static final ThemeData themeData = ThemeData(
      primaryColor: PRIMARY_COLOR,
      accentColor: COLOR_DARK_BLUE,
      scaffoldBackgroundColor: COLOR_WHITE,
      brightness: Brightness.light,
      textTheme: screenWidth < 500 ? _smallTextTheme : _textTheme,
      // Text_Form_Field Theme
      inputDecorationTheme: InputDecorationTheme(
          isDense: true,

          //prefixStyle: TextStyle(color: _lightIconColor),
          // hintStyle: TextStyle(fontFamily: mavenPro, fontSize: 18.0),
          labelStyle: TextStyle(fontFamily: mavenPro),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 5.0),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              )),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TEXT_FIELD_BORDER),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TEXT_FIELD_ERROR),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TEXT_FIELD_ERROR),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          fillColor: TEXT_FIELD_FILL,
          filled: true
          //focusColor: _lightBorderActiveColor,

          ),
      buttonTheme: ButtonThemeData(
        buttonColor: BUTTON_COLOR_GREEN,
        // height: 30.0,
        textTheme: ButtonTextTheme.primary,
      ));
}