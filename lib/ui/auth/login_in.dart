import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/services/formValidation.dart';
import 'package:tajicEasy/ui/widgets/bottomNavigationBar.dart';
import 'package:tajicEasy/ui/widgets/textFormField_widget.dart';
import 'sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController paswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //* Header Image
              Container(
                width: double.infinity,
                height: Get.height / 4,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("assets/images/loginImg.png"))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.w),
                child: ListTile(
                  title: Text("Welcome.",
                      style: themeData.textTheme.headline1.copyWith(fontSize: 100.ssp)),
                  subtitle: Text(
                    "Please Login to start",
                    textAlign: TextAlign.start,
                    style: themeData.textTheme.bodyText1
                        .copyWith(color: AppTheme.COLOR_DARK_BLUE, fontSize: 50.ssp),
                  ),
                ),
              ),
              SizedBox(height: 30.w),
              Container(
                width: double.infinity,
                // color: Colors.red,
                // height: 0.5.sh,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      //*  Login Section
                      children: [
                        TextFieldWidget(
                          validator: FormValidation.emailValidation,
                          controller: emailController,
                          hintText: "Email ID",
                          labelText: "Email ID",
                          prefixIcon: Icon(Icons.email, size: 50.w),
                        ),
                        SizedBox(height: 30.w),
                        TextFieldWidget(
                          validator: FormValidation.passwordValidation,
                          controller: paswordController,
                          obscureText: isVisible,
                          hintText: "Password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock, size: 50.w),
                          suffixIcon: IconButton(
                              icon: isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              }),
                        ),
                        SizedBox(height: 20.w),

                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Forgot Password ?",
                              textAlign: TextAlign.right,
                              style: themeData.textTheme.subtitle1.copyWith(fontSize: 40.ssp),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.w),
                        //* Login Button
                        Container(
                          width: 0.6.sw,
                          height: 0.06.sh,
                          child: MaterialButton(
                            color: AppTheme.COLOR_DARK_BLUE,
                            onPressed: _validateAndSave,
                            child: Text(
                              "LOGIN",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(fontSize: 40.ssp, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.w),
                        Container(
                          width: double.infinity,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("----OR----",
                              style: themeData.textTheme.subtitle1.copyWith(
                                fontSize: 40.ssp,
                              )),
                        ),
                        SizedBox(height: 15.w),
                        //* Google Sign In Button
                        Container(
                          width: 0.6.sw,
                          height: 0.06.sh,
                          child: MaterialButton(
                            color: Color(0xffea4335),
                            onPressed: () {
                              Get.offAll(AppMain());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(FlutterIcons.google_ant),
                                Text(
                                  "Sign in with Google",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(fontSize: 40.ssp, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        //* Sign Up Text
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Don\'t have an account ? ',
                                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                                        fontSize: 40.ssp,
                                      )),
                              TextSpan(
                                text: 'Sign Up',
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: AppTheme.PRIMARY_COLOR,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.ssp,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // single tapped
                                    Get.to(SignUp());
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Validate and save form to Firebase
  void _validateAndSave() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print("Form is validated and saved");
    } else {
      setState(() {
        // _autoValidate = true;
        print("Form is not validated ");
      });
    }
  }
}
