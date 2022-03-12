import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tracking_app/components/text_field_container.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Doctor/add_a_patient.dart';
import 'package:health_tracking_app/pages/Doctor/homepage.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/navigationDrawer_patient.dart';
import 'package:health_tracking_app/pages/Patient/profile.dart';

class PatientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/backround.jpg")),
          Patients(
            context,
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Patients"),
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

  Widget Patients(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                  leading: Icon(Icons.man),
                  title: Text(
                    'Name Surname',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('DELETE',
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
                  leading: Icon(Icons.woman),
                  title: Text(
                    'Name Surname',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('DELETE',
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
                  leading: Icon(Icons.man),
                  title: Text(
                    'Name Surname',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('DELETE',
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
                  leading: Icon(Icons.woman),
                  title: Text(
                    'Name Surname',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('DELETE',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              color: AppColors.MAIN_COLOR,
              child: const Text('Add a patient',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddPatientPage();
                    },
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
