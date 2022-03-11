import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Doctor/homepage.dart';

class DoctorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/backround.jpg")),
          ProfileCard(
            context,
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DoctorHomePage();
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget ProfileCard(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    'data:image/png;base64,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'),
              ),
              const ListTile(
                  title: Text(
                'MY NAME',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('EDIT',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Title(
                  color: Colors.white,
                  child: Text(
                    "Personal Data",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              const ListTile(
                  leading: const Icon(Icons.timeline),
                  title: Text("Experience")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.sick), title: Text("Patient")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.rate_review_outlined),
                  title: Text("Rates")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.text_snippet),
                  title: Text("Specialization")),
            ],
          ),
        ),
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Title(
                  color: Colors.white,
                  child: Text(
                    "Connected with Smart Watch",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              const ListTile(
                  leading: const Icon(Icons.do_not_step), title: Text("Steps")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.thermostat),
                  title: Text("Temperature")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.monitor_heart_outlined),
                  title: Text("Heart Beat")),
            ],
          ),
        ),
      ],
    );
  }
}
