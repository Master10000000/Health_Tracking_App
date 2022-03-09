import 'package:flutter/material.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';

class SplashPage extends StatelessWidget {
  int? duration = 0;
  Widget gotoPage;

  SplashPage({required this.gotoPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration!), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.gotoPage));
    });

    return Material(
      child: Container(
          color: AppColors.MAIN_COLOR,
          alignment: Alignment.center,
          child: Icon(Icons.health_and_safety, color: Colors.white, size: 100)),
    );
  }
}
