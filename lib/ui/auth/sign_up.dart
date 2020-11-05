import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/ui/widgets/textFormField_widget.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisible = true;

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
                  title: Text("Sign Up.", style: themeData.textTheme.headline1),
                  subtitle: Text(
                    "Create a new account",
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
                        hintText: "Full Name",
                        labelText: "Full Name",
                        prefixIcon: Icon(Icons.person),
                      ),
                      SizedBox(height: 10.0),
                      TextFieldWidget(
                        keyboardType: TextInputType.phone,
                        hintText: "Mobile Number",
                        labelText: "Mobile Number",
                        prefixIcon: Icon(Icons.mobile_friendly),
                      ),
                      SizedBox(height: 10.0),
                      TextFieldWidget(
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

                      //* Login Button
                      RaisedButton(
                        color: AppTheme.COLOR_DARK_BLUE,
                        onPressed: () {},
                        child: Text("SIGN IN"),
                      ),
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
