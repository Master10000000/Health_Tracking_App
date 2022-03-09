import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Doctor/navigationDrawer.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child:
                  Image.asset('assets/images/backround.jpg', fit: BoxFit.cover),
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset("assets/images/Logo2.png"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NavigationDrawer();
                },
              ),
            );
          },
        ),
        actions: [
          TextButton(
            child: Text(
              "Appointments",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Daily plan",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Info",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
