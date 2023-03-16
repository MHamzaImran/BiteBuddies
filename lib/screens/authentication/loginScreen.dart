import 'package:flutter/material.dart';
import 'package:bite_buddies/screens/authentication/forgetPasswordScreen.dart';

import '../../const/colors.dart';
import 'signUpScreen.dart';
import '../../utils/helper.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // focus nodes
  FocusNode focusNode1;
  final field1Key = GlobalKey<FormFieldState>();
  FocusNode focusNode2;
  final field2Key = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    focusNode1 = FocusNode();
    focusNode1.addListener(() {
      if (!focusNode1.hasFocus) {
        field1Key.currentState?.validate();
      }
    });
    focusNode2 = FocusNode();
    focusNode2.addListener(() {
      if (!focusNode2.hasFocus) {
        field2Key.currentState?.validate();
      }
    });
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Scaffold(
      backgroundColor: AppColor.bright,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 5),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 20, right: screenWidth * 20, top: screenWidth * 5),
                child: Image.asset(
                  Helper.getAssetName("logo.png", "virtual"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Center(
                child: Text('Bite Buddies',
                    style: TextStyle(
                      fontSize: screenWidth * 8,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: screenWidth * 20,
              ),
              TextFormField(
                  key: field1Key,
                  focusNode: focusNode1,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    // email validation using regex
                    else if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(color: AppColor.dark),
                  decoration: textFieldDecoration(screenWidth,
                      hintText: 'Email Address', labelText: 'Email')),
              SizedBox(
                height: screenWidth * 5,
              ),
              TextFormField(
                key: field2Key,
                focusNode: focusNode2,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  } else if (value.length > 20) {
                    return 'Password must be less than 20 characters';
                  }
                  // password should contain at least one uppercase letter
                  if (!RegExp(r'[A-Z]').hasMatch(value)) {
                    return 'Password must contain at least one uppercase letter';
                  }
                  // password should contain at least one lowercase letter
                  if (!RegExp(r'[a-z]').hasMatch(value)) {
                    return 'Password must contain at least one lowercase letter';
                  }
                  // password should contain at least one digit
                  if (!RegExp(r'[0-9]').hasMatch(value)) {
                    return 'Password must contain at least one digit';
                  }
                  // password should contain at least one special character
                  if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                    return 'Password must contain at least one special character';
                  }

                  return null;
                },
                obscureText: _obscureText,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: TextStyle(color: AppColor.dark),
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Enter Password', labelText: 'Password'),
              ),
              SizedBox(
                height: screenWidth * 5,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AppColor.main,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: screenWidth * 4, color: AppColor.bright),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed(ForgetPwScreen.routeName),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: screenWidth * 3.5),
                      ))),
              // Divider with or text
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColor.dark,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 5),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: screenWidth * 4,
                        color: AppColor.dark,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColor.dark,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: screenWidth * 40,
                    height: screenWidth * 10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(
                            0xFF367FC0,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName(
                              "fb.png",
                              "virtual",
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Facebook")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 10,
                    width: screenWidth * 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(
                            0xFFDD4B39,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            Helper.getAssetName(
                              "google.png",
                              "virtual",
                            ),
                          ),
                          Text("Google")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: screenWidth * 3.5, color: AppColor.dark),
                  ),
                  TextButton(
                      onPressed: ()=>Navigator.of(context)
                          .pushReplacementNamed(SignUpScreen.routeName),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: screenWidth * 3.5, color: AppColor.main),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration textFieldDecoration(double screenWidth,
      {String hintText, String labelText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColor.primary),
        labelText: labelText,
        labelStyle: TextStyle(color: AppColor.primary),
        focusColor: AppColor.dark,
        contentPadding: EdgeInsets.symmetric(
            horizontal: screenWidth * 5, vertical: screenWidth * 4),
        floatingLabelStyle:
            TextStyle(color: AppColor.dark, fontSize: screenWidth * 4),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColor.dark), //<-- SEE HERE
          borderRadius: BorderRadius.circular(50.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColor.dark), //<-- SEE HERE
          borderRadius: BorderRadius.circular(50.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColor.dark), //<-- SEE HERE
          borderRadius: BorderRadius.circular(50.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColor.dark), //<-- SEE HERE
          borderRadius: BorderRadius.circular(50.0),
        ),
        suffixIcon: labelText == "Password"
            ? InkWell(
                onTap: () {
                  setState(() {
                    if (_obscureText == true) {
                      _obscureText = false;
                    } else {
                      _obscureText = true;
                    }
                  });
                },
                child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: AppColor.main),
              )
            : null);
  }
}
