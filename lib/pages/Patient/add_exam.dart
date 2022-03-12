// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/pages/Doctor/homepage.dart';
import 'package:health_tracking_app/pages/Doctor/patients.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/medicaltests.dart';
import 'package:health_tracking_app/pages/welcomeScreen.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';

class AddExamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                children: <Widget>[
                  const SizedBox(width: 8),
                  RoundedInputField(
                    hintText: "Type of exam",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Date",
                    onChanged: (value) {},
                  ),
                  const ListTile(
                      leading: Icon(Icons.picture_as_pdf_outlined),
                      title: Text(
                        'Import Pdf',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MedicalTestPage();
                                },
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: AppColors.MAIN_COLOR,
                          padding: const EdgeInsets.all(25),
                          child: const Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MedicalTestPage();
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
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add an exam"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MedicalTestPage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
