import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/ui/constants/app_theme.dart';
import 'package:tajicEasy/ui/widgets/textFormField_widget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  // height: 300,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.fitHeight, image: AssetImage("assets/images/loginImg.png"))),
                  // child: Image.asset("assets/images/loginImg.png"),
                ),
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
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                      RaisedButton(
                        color: AppTheme.COLOR_DARK_BLUE,
                        onPressed: () {},
                        child: Text("LOGIN"),
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
