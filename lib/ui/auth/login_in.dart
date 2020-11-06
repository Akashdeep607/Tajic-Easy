import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/ui/widgets/textFormField_widget.dart';

import 'sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: true,
        // resizeToAvoidBottomPadding: true,
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          width: Get.width,
          child: Column(
            children: [
              //* Header Image
              Container(
                width: double.infinity,
                height: Get.height / 4,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("assets/images/loginImg.png"))),
                // child: Image.asset("assets/images/loginImg.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  title: Text("Welcome.", style: themeData.textTheme.headline1),
                  subtitle: Text(
                    "Please Login to start",
                    textAlign: TextAlign.start,
                    style: themeData.textTheme.bodyText1.copyWith(color: AppTheme.COLOR_DARK_BLUE),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: Get.height,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    //*  Login Section
                    children: [
                      TextFieldWidget(
                        controller: emailController,
                        hintText: "Email ID",
                        labelText: "Email ID",
                        prefixIcon: Icon(Icons.email),
                      ),
                      SizedBox(height: 10.0),
                      TextFieldWidget(
                        obscureText: isVisible,
                        hintText: "Password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                            icon: isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            }),
                      ),
                      SizedBox(height: 5.0),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "Forgot Password ?",
                            textAlign: TextAlign.right,
                            style: themeData.textTheme.subtitle1,
                          ),
                        ),
                      ),
                      //* Login Button
                      RaisedButton(
                        color: AppTheme.COLOR_DARK_BLUE,
                        onPressed: () {},
                        child: Text("LOGIN"),
                      ),
                      Container(
                        width: double.infinity,
                        // color: Colors.red,
                        alignment: Alignment.center,
                        child: Text("----OR----", style: themeData.textTheme.subtitle1),
                      ),
                      //* Google Sign In Button
                      RaisedButton.icon(
                          color: Color(0xffea4335),
                          onPressed: () {},
                          icon: Icon(FlutterIcons.google_ant),
                          label: Text("Sign in with Google")),
                      SizedBox(height: 10.0),
                      //* Sign Up Text
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Don\'t have an account ? ',
                                style: Theme.of(context).textTheme.subtitle1),
                            TextSpan(
                              text: 'Sign Up',
                              style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: AppTheme.PRIMARY_COLOR, fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // single tapped
                                  Get.to(SignUp());
                                },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
