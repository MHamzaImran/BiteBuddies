import 'package:bite_buddies/screens/authentication/register/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:bite_buddies/screens/authentication/login/loginScreen.dart';
import '../../const/colors.dart';
import '../../utils/helper.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landingScreen";
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bright,
          body: Padding(
            padding: EdgeInsets.all(screenWidth * 5),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 5),
                      child: SizedBox(
                        height: screenWidth * 60,
                        child: Image.asset(
                          Helper.getAssetName("logo.png", "virtual"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0,
                    ),
                    Text('Bite Buddies',
                        style: TextStyle(
                          fontSize: screenWidth * 8,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: screenWidth * 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        },
                        child: Text("Login",style: TextStyle(fontSize: screenWidth * 4),),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                          MaterialStateProperty.all(AppColor.main),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(
                              side:
                              BorderSide(color: AppColor.main, width: 1.5),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(SignUpScreen.routeName);
                        },
                        child: Text("Create an Account",style: TextStyle(fontSize: screenWidth * 4),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}