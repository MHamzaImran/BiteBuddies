import 'package:flutter/material.dart';
import 'package:bite_buddies/const/colors.dart';

import '../../widgets/custom_appbar.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "/profileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _obscureText = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    var screenHeight = queryData.size.height / 100;
    return Scaffold(
      appBar: customAppBar(context, title: 'Profile', backButton: false),
      backgroundColor: AppColor.bright,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(
              height: screenHeight * 0.5,
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: screenHeight * 8,
                    backgroundColor: AppColor.placeholder,
                    child: Container(
                      width: screenHeight * 15,
                      height: screenHeight * 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/real/fruit.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: screenHeight * 2,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: screenHeight * 2,
                      backgroundColor: AppColor.placeholder,
                      child: Icon(
                        Icons.edit,
                        color: AppColor.bright,
                        size: screenHeight * 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenWidth * 10,
            ),
            TextFormField(
                controller: nameController,
                style: TextStyle(color: AppColor.dark),
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Enter Full Name', labelText: 'Name')),
            SizedBox(
              height: screenWidth * 5,
            ),
            TextFormField(
                controller: emailController,
                style: TextStyle(color: AppColor.dark),
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Email Address', labelText: 'Email')),
            SizedBox(
              height: screenWidth * 5,
            ),
            TextFormField(
                controller: numberController,
                style: TextStyle(color: AppColor.dark),
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Mobile Number', labelText: 'Number')),
            SizedBox(
              height: screenWidth * 5,
            ),
            TextFormField(
                controller: addressController,
                style: TextStyle(color: AppColor.dark),
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Enter Address', labelText: 'Address')),
            SizedBox(
              height: screenWidth * 5,
            ),
            TextFormField(
                controller: passwordController,
                style: TextStyle(color: AppColor.dark),
                obscureText: _obscureText,
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Enter Password', labelText: 'Password')),
            SizedBox(
              height: screenWidth * 5,
            ),
            TextFormField(
                controller: confirmPasswordController,
                style: TextStyle(color: AppColor.dark),
                decoration: textFieldDecoration(screenWidth,
                    hintText: 'Confirm Password', labelText: 'Confirm')),
            SizedBox(
              height: screenWidth * 5,
            ),
            SizedBox(
              height: screenWidth * 12,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColor.main,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Update",
                  style: TextStyle(
                      fontSize: screenWidth * 4, color: AppColor.bright),
                ),
              ),
            ),
            SizedBox(
              height: screenWidth * 5,
            ),
          ],
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
        suffixIcon: labelText == "Password" || labelText == "Confirm"
            ? InkWell(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: AppColor.main),
              )
            : null);
  }
}

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({
    Key key,
    String label,
    String value,
    bool isPassword = false,
  })  : _label = label,
        _value = value,
        _isPassword = isPassword,
        super(key: key);

  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.bright,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: _label,
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
