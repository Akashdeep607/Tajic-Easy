import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/services/formValidation.dart';
import 'package:tajicEasy/ui/auth/login_in.dart';
import 'package:tajicEasy/ui/widgets/textFormField_widget.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisible = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController paswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    ScreenUtil.init(context);
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
                        fit: BoxFit.cover, image: AssetImage("assets/images/signUpImg.png"))),
                // child: Image.asset("assets/images/loginImg.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.w),
                child: ListTile(
                  title: Text("Sign Up.",
                      style: themeData.textTheme.headline1.copyWith(fontSize: 100.ssp)),
                  subtitle: Text(
                    "Create a new account",
                    textAlign: TextAlign.start,
                    style: themeData.textTheme.bodyText1
                        .copyWith(color: AppTheme.COLOR_DARK_BLUE, fontSize: 50.ssp),
                  ),
                ),
              ),
              SizedBox(height: 30.w),
              Container(
                width: double.infinity,
                height: Get.height,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      //*  Sign Up Section
                      children: [
                        TextFieldWidget(
                          validator: FormValidation.nameValidation,
                          controller: fullNameController,
                          hintText: "Full Name",
                          labelText: "Full Name",
                          prefixIcon: Icon(Icons.person, size: 50.w),
                        ),
                        SizedBox(height: 30.w),
                        TextFieldWidget(
                          validator: FormValidation.phoneNumberValidation,
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          hintText: "Mobile Number",
                          labelText: "Mobile Number",
                          prefixIcon: Icon(FlutterIcons.mobile1_ant, size: 50.w),
                        ),
                        SizedBox(height: 30.w),
                        TextFieldWidget(
                          validator: FormValidation.emailValidation,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
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

                        SizedBox(height: 30.w),

                        //* Sign Up Button
                        Container(
                          width: double.infinity,
                          height: 0.06.sh,
                          child: MaterialButton(
                            color: AppTheme.COLOR_DARK_BLUE,
                            onPressed: _validateAndSignUp,
                            child: Text(
                              "SIGN UP",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(fontSize: 40.ssp, color: Colors.white),
                            ),
                          ),
                        ),

                        SizedBox(height: 10.0),
                        //* Sign In Text
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Already have an account ? ',
                                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                                        fontSize: 40.ssp,
                                      )),
                              TextSpan(
                                text: 'Sign In',
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: AppTheme.PRIMARY_COLOR,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.ssp,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // single tapped
                                    Get.offAll(Login());
                                  },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  // Validate, Save and SignUp
  void _validateAndSignUp() {
    final _form = _formKey.currentState;
    if (_form.validate()) {
      _form.save();
      print("Successfully SignUp");
    } else {
      setState(() {
        // _autoValidate = true;
        print("Fail to signup ");
      });
    }
  }
}
