import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tracking_app/components/text_field_container.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Doctor/add_a_patient.dart';
import 'package:health_tracking_app/pages/Doctor/homepage.dart';
import 'package:health_tracking_app/pages/Patient/add_exam.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/navigationDrawer_patient.dart';
import 'package:health_tracking_app/pages/Patient/profile.dart';

class MedicalTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/backround.jpg")),
          MedicalTests(
            context,
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Medical Tests"),
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

  Widget MedicalTests(BuildContext context) {
    return Column(
      children: [
        const ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text(
              'Blood Test',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        const ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text(
              'MRI',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        const ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text(
              'X-Ray',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        const ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text(
              'Ultrasound',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              color: AppColors.MAIN_COLOR,
              child: const Text('Add an exam',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddExamPage();
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
