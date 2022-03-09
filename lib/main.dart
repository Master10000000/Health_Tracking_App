import 'package:flutter/material.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/pages/splashpage.dart';
import 'package:health_tracking_app/pages/welcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Tracking App',
      theme: ThemeData(
        primaryColor: AppColors.PRIMARY_COLOR,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashPage(duration: 3, gotoPage: WelcomeScreen()),
    );
  }
}
