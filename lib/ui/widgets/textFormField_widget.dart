import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajicEasy/constants/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
  static double screenWidth = window.physicalSize.width;

  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSaved;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool isEmail;
  final bool isPassword;
  final bool obscureText;
  final int maxLength;
  final FocusNode focusNode;
  final InputDecoration decoration;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final bool autoValidate;
  final String Function(String) validator;

  const TextFieldWidget(
      {Key key,
      this.labelText,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.keyboardType = TextInputType.text,
      this.controller,
      this.isEmail,
      this.isPassword,
      this.obscureText = false,
      this.maxLength,
      this.focusNode,
      this.decoration,
      this.prefixIcon,
      this.suffixIcon,
      this.autoValidate,
      this.validator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      cursorWidth: 2.0,
      style: TextStyle(
        fontFamily: AppTheme.mavenPro,
        color: AppTheme.PRIMARY_COLOR,
        fontSize: 45.ssp,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        isDense: true,
      ),
    );
  }
}
