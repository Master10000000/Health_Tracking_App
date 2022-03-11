import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/navigationDrawer_patient.dart';

class Profile extends StatelessWidget {
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
                  return PatientHomePage();
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
                    'https://image.shutterstock.com/image-vector/patient-icon-medical-health-care-260nw-554075098.jpg'),
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
              const ListTile(
                  leading: const Icon(Icons.monitor_weight),
                  title: Text("Weight")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.height), title: Text("Height")),
              const Divider(height: 12),
              const ListTile(
                  leading: const Icon(Icons.male_rounded), title: Text("Sex")),
            ],
          ),
        ),
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
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
