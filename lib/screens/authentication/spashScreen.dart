import 'package:flutter/material.dart';

import '../../utils/helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Helper.getAssetName("logo.png", "virtual"),
              fit: BoxFit.fitWidth,
              height: screenWidth * 30,
            ),
            SizedBox(
              height: screenWidth * 0,
            ),
            Text('Bite Buddies',
                style: TextStyle(
                  fontSize: screenWidth * 6,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
