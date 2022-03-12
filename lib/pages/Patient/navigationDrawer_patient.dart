import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Doctor/homepage.dart';
import 'package:health_tracking_app/pages/Doctor/info.dart';
import 'package:health_tracking_app/pages/Patient/dailyplan.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/medicaltests.dart';
import 'package:health_tracking_app/pages/Patient/profile.dart';
import 'package:health_tracking_app/pages/welcomeScreen.dart';

class NavigationDrawerPatient extends StatelessWidget {
  const NavigationDrawerPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: AppColors.MAIN_COLOR,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Profile();
                },
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      'https://image.shutterstock.com/image-vector/patient-icon-medical-health-care-260nw-554075098.jpg'),
                ),
                SizedBox(height: 12),
                Text(
                  "Patient's name",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                Text(
                  "Patient@mail.com",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16, // vertical spacing
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PatientHomePage())),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_outlined),
              title: const Text("Appointments"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.medication),
              title: const Text("Daily plan"),
              onTap: () {
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
            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text("Medical Tests"),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MedicalTestPage())),
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("Info"),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => InfoPage())),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Sign out"),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => WelcomeScreen())),
            )
          ],
        ),
      );
}
