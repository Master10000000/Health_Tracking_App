// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/pages/Login/loginScreen.dart';
import 'package:health_tracking_app/pages/Sign%20up/social_icon.dart';
import 'package:health_tracking_app/pages/welcomeScreen.dart';

import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned.fill(
              child:
                  Image.asset('assets/images/backround.jpg', fit: BoxFit.cover),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  RoundedInputField(
                    hintText: "Email...",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Name...",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Surname...",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Health Number...",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Phone number...",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "ZIP Code...",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Address...",
                    onChanged: (value) {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: AppColors.MAIN_COLOR,
                          padding: const EdgeInsets.all(25),
                          child: const Text(
                            "Sumbit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 40),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WelcomeScreen();
                                },
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: AppColors.MAIN_COLOR,
                          padding: const EdgeInsets.all(25),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/images/icons/facebook.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/images/icons/twitter.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/images/icons/google-plus.svg",
                        press: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
