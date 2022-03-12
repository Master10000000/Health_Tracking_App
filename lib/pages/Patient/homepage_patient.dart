import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/components/text_field_container.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Patient/dailyplan.dart';
import 'package:health_tracking_app/pages/Patient/navigationDrawer_patient.dart';
import 'package:health_tracking_app/pages/Patient/profile.dart';
import 'package:health_tracking_app/pages/Patient/info_patient.dart';

class PatientHomePage extends StatelessWidget {
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
        leading: IconButton(
          icon: Image.asset("assets/images/Logo2.png"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NavigationDrawerPatient();
                },
              ),
            );
          },
        ),
        actions: [
          TextButton(
            child: const Text(
              "Appointments",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text(
              "Daily plan",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MedicinePage();
                  },
                ),
              );
            },
          ),
          TextButton(
            child: const Text(
              "Info",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InfoPage();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Profile();
                  },
                ),
              );
            },
          )
        ],
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
              const ListTile(
                  leading: Icon(Icons.date_range),
                  title: Text('Date of birth')),
              const ListTile(
                  leading: Icon(Icons.numbers), title: Text('Health number')),
              const ListTile(
                leading: Icon(Icons.medication),
                title: Text('Next Medicine'),
              ),
              const ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('Featured Appointment')),
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
      ],
    );
  }
}
