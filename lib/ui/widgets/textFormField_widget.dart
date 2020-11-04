import 'package:flutter/material.dart';
import 'package:tajicEasy/ui/constants/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
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
      this.autoValidate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorWidth: 2.0,
      style: TextStyle(
        fontFamily: AppTheme.mavenPro,
        color: AppTheme.PRIMARY_COLOR,
        fontSize: 16.0,
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
